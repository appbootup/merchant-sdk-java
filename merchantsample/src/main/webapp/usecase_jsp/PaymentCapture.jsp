<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PayPal SDK - DoCapture</title>

</head>
<body>
	<img src="https://devtools-paypal.com/image/bdg_payments_by_pp_2line.png" alt="PAYMENTS BY PayPal" />
	<div id="wrapper">
		<div id="header">
			<h3>DoCapture</h3>
			<div id="apidetails">Used to captures an authorized payment.</div>
		</div>
		<form method="POST">
			<div id="request_form">
				<div class="params">
					<div class="param_name">AuthorizationID*</div>
					<div class="param_value">
						<input type="text" name="authID" value="<%=(session.getAttribute("transactionId")!=null)?((String)session.getAttribute("transactionId")):"" %>" size="50"	maxlength="260" />
						<%session.removeAttribute("transactionId"); %>
					</div>
				</div>
				<div class="params">
					<div class="param_name">Amount*</div>
					<div class="param_value">
						<input type="text" name="amt" value="1.00" size="50"
							maxlength="260" />
					</div>
				</div>
				<div class="params">
					<div class="param_name">Currency Code*</div>
					<div class="param_value">
						<input type="text" name="currencyCode" value="USD" size="50"
							maxlength="260" />
					</div>
				</div>
				<div class="params">
					<div class="param_name">CompleteCodeType*</div>
					<div class="param_value">
						<select name="completeCodeType">
							<option value="Complete">Complete</option>
							<option value="NotComplete">NotComplete</option>
						</select>
					</div>
				</div>
				<div class="submit">
					<input type="submit" name="DoCaptureBtn" value="DoCapture" /><br />
				</div>
				<a href="index.html">Home</a>
			</div>
		</form>
		
	</div>
</body>
</html>