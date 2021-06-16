select  SHOP_MONTH,
        CUST_CODE,
        TXN_M,
        TXN_LM,
        CUM_TXN,
        case when TXN_M = CUM_TXN and TXN_M = TXN_LM then 'NEW'
        when TXN_M != TXN_LM then 'REPEAT'
        when TXN_M = TXN_LM then 'REACTIVATED'
        when (TXN_M is null or TXN_LM is null) and CUM_TXN is not null then 'CHURN'
        else 'NOT EXCLUDED'
        end as MOVEMENT_STATUS
from (
select  aa.SHOP_MONTH,
        bb.CUST_CODE,
        cc.TXN_M,
        sum(cc.TXN_M) over (partition by bb.CUST_CODE order by aa.SHOP_MONTH range between 1 preceding and current row) as TXN_LM,
        sum(cc.TXN_M) over (partition by bb.CUST_CODE order by aa.SHOP_MONTH) as CUM_TXN,
from
(select distinct cast(substr(cast(SHOP_DATE as string),1,6) as int64) as SHOP_MONTH from `bads7105-308203.spmk.supermarket`) aa
cross join
(select distinct CUST_CODE from `bads7105-308203.spmk.supermarket` where CUST_CODE is  not null) bb
left join (
select  cast(substr(cast(SHOP_DATE as string),1,6) as int64) as SHOP_MONTH,
        CUST_CODE,
        count(*) as TXN_M
from    `bads7105-308203.spmk.supermarket`
where   CUST_CODE is  not null
group by cast(substr(cast(SHOP_DATE as string),1,6) as int64),CUST_CODE
) cc
on bb.CUST_CODE = cc.CUST_CODE and aa.SHOP_MONTH = cc.SHOP_MONTH
order by bb.CUST_CODE, aa.SHOP_MONTH
)
;