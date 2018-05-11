{if $DISABLE_TRANSACTIONSUMMARY|default:"0" != 1}
<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-money fa-fw"></i> {t username=$USERNAME}%1 Account Information{/t}
      </div>
      <div class="panel-body">
        <div class="row">
          <div class="col-lg-12">
            <div class="panel panel-info">
              <div class="panel-heading">
                <i class="fa fa-credit-card fa-fw"></i> {t}All Time Transaction Totals{/t}
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-hover">
                  <thead>
                    <tr>
                      {foreach $SUMMARY as $type=>$total}
                      <th>{t type=$type}%1{/t}</th>
                      {/foreach}
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      {foreach $SUMMARY as $type=>$total}
                      <td class="right">{$total|number_format:"8"}</td>
                      {/foreach}
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-12">
            <div class="panel panel-info">
              <div class="panel-heading">
                <i class="fa fa-clock-o fa-fw"></i> {t}Transactions over time{/t}
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-hover">
                  <thead>
                    <tr>
                      <th></th>
                      <th>{t}Credit{/t}</th>
                      <th>{t}Bonus{/t}</th>
                      <th>{t}Debit AP{/t}</th>
                      <th>{t}Debit MP{/t}</th>
                      <th>{t}Donation{/t}</th>
                      {if $GLOBAL.fees > 0}
                      <th>{t}Fee{/t}</th>
                      {/if}
                      <th>{t}TXFee{/t}</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>{t}Last Hour{/t}</th>
                      <td>{$BYTIME.1HourCredit|number_format:"8"}</td>
                      <td>{$BYTIME.1HourBonus|number_format:"8"}</td>
                      <td>{$BYTIME.1HourDebitAP|number_format:"8"}</td>
                      <td>{$BYTIME.1HourDebitMP|number_format:"8"}</td>
                      <td>{$BYTIME.1HourDonation|number_format:"8"}</td>
                      {if $GLOBAL.fees|default:"0" > 0}
                      <td>{$BYTIME.1HourFee|number_format:"8"}</td>
                      {/if}
                      <td>{$BYTIME.1HourTXFee|number_format:"8"}</td>
                    </tr>
                    <tr>
                      <td>{t}Last Day{/t}</th>
                      <td>{$BYTIME.24HourCredit|number_format:"8"}</td>
                      <td>{$BYTIME.24HourBonus|number_format:"8"}</td>
                      <td>{$BYTIME.24HourDebitAP|number_format:"8"}</td>
                      <td>{$BYTIME.24HourDebitMP|number_format:"8"}</td>
                      <td>{$BYTIME.24HourDonation|number_format:"8"}</td>
                      {if $GLOBAL.fees|default:"0" > 0}
                      <td>{$BYTIME.24HourFee|number_format:"8"}</td>
                      {/if}
                      <td>{$BYTIME.24HourTXFee|number_format:"8"}</td>
                    </tr>
                    <tr>
                      <td>{t}Last Week{/t}</th>
                      <td>{$BYTIME.1WeekCredit|number_format:"8"}</td>
                      <td>{$BYTIME.1WeekBonus|number_format:"8"}</td>
                      <td>{$BYTIME.1WeekDebitAP|number_format:"8"}</td>
                      <td>{$BYTIME.1WeekDebitMP|number_format:"8"}</td>
                      <td>{$BYTIME.1WeekDonation|number_format:"8"}</td>
                      {if $GLOBAL.fees|default:"0" > 0}
                      <td>{$BYTIME.1WeekFee|number_format:"8"}</td>
                      {/if}
                      <td>{$BYTIME.1WeekTXFee|number_format:"8"}</td>
                    </tr>
                    <tr>
                      <td>{t}Last Month{/t}</th>
                      <td>{$BYTIME.1MonthCredit|number_format:"8"}</td>
                      <td>{$BYTIME.1MonthBonus|number_format:"8"}</td>
                      <td>{$BYTIME.1MonthDebitAP|number_format:"8"}</td>
                      <td>{$BYTIME.1MonthDebitMP|number_format:"8"}</td>
                      <td>{$BYTIME.1MonthDonation|number_format:"8"}</td>
                      {if $GLOBAL.fees|default:"0" > 0}
                      <td>{$BYTIME.1MonthFee|number_format:"8"}</td>
                      {/if}
                      <td>{$BYTIME.1MonthTXFee|number_format:"8"}</td>
                    </tr>
                    <tr>
                      <td>{t}Last Year{/t}</th>
                      <td>{$BYTIME.1YearCredit|number_format:"8"}</td>
                      <td>{$BYTIME.1YearBonus|number_format:"8"}</td>
                      <td>{$BYTIME.1YearDebitAP|number_format:"8"}</td>
                      <td>{$BYTIME.1YearDebitMP|number_format:"8"}</td>
                      <td>{$BYTIME.1YearDonation|number_format:"8"}</td>
                      {if $GLOBAL.fees|default:"0" > 0}
                      <td>{$BYTIME.1YearFee|number_format:"8"}</td>
                      {/if}
                      <td>{$BYTIME.1YearTXFee|number_format:"8"}</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
{/if}


