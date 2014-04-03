<#import "template.ftl" as layout>
<@layout.mainLayout active='log' bodyClass='log'; section>

    <div class="row">
        <div class="col-md-10">
            <h2>Account Log</h2>
        </div>
    </div>

    <table class="table">
        <thead>
        <tr>
            <td>Date</td>
            <td>Event</td>
            <td>IP</td>
            <td>Client</td>
        </tr>
        </thead>

        <tbody>
        <#list log.events as event>
            <tr>
                <td>${event.date?datetime}</td>
                <td>${event.event}</td>
                <td>${event.ipAddress}</td>
                <td>${event.client}</td
            </tr>
        </#list>
        </tbody>
    </table>

</@layout.mainLayout>