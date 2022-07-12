<#macro header>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <#include "styles.css">
        <title>MargTools - Item Calculator</title>
    </head>
    <body>
        <div class="box">
            <h1>MargTools</h1>
            <p><i>Item calculator</i></p>
            <hr>
            <#nested>
            <hr>
            <i>Created by Marshin<br>2022</i>
        </div>
    </body>
    </html>
</#macro>