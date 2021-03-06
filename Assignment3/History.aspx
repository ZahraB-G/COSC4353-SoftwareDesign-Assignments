﻿<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml" runat ="server">
<head runat ="server">
    <meta charset="utf-8" />
    <title>Quote History</title>
    <link rel ="stylesheet" href="History.css"/>
</head>
<body>
    <table runat ="server">
        <caption>Quote History</caption>
        <thead>
            <tr>
                <th scope="col">Date of the request</th>
                <th scope="col">Requested Gallon</th>
                <th scope="col">Price Per Gallon</th>
                <th scope="col">Total Cost</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td data-label="Date of the request">2/26/2020</td>
                <td data-label="Requested Gallon">500</td>
                <td data-label="Price Per Gallon">$1</td>
                <td data-label="Total Cost">$500</td>
            </tr>
            <tr>
                <td runat ="server" scope="row" data-label="Date of the request">4/26/2020</td>
                <td data-label="Requested Gallon">1000</td>
                <td data-label="Price Per Gallon">$0.99</td>
                <td data-label="Total Cost">990</td>
            </tr>
         </tbody>
    </table>
</body>
</html>
