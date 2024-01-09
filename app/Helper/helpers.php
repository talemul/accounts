<?php


use Encore\Admin\Facades\Admin;
use Illuminate\Support\Facades\DB;

function get_chart_of_account_data()
{
    $chart_of_account = DB::select('SELECT `chart_of_accounts`.`origin`     AS `origin`,`chart_of_accounts`.`id`         AS `id`,`chart_of_accounts`.`p_id`       AS `p_id`,`chart_of_accounts`.`project_id` AS `project_id`,`chart_of_accounts`.`code`       AS `code`FROM `chart_of_accounts`WHERE `chart_of_accounts`.`id` NOT IN(SELECT `chart_of_accounts`.`p_id` FROM `chart_of_accounts`)     AND (`chart_of_accounts`.`p_id` <> 0)     AND ISNULL(`chart_of_accounts`.`deleted_at`)');
    return $chart_of_account;
   // dd($chart_of_account);
}
