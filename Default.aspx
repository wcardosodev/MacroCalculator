<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MacroCalculator</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <%-- styles --%>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="CalculatorStyles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="background">
            <div class="container-fluid">
                <div class="row">
                    <div class="header col-sm-12">
                        <h2><strong>Macronutrient Calculator</strong></h2>
                        <p>This simple to use program will calculate what your daily nutrional intake should be.</p>
                    </div>
                </div>
                <div class="line-separator"></div>
                <div class="row">
                    <div class="col-sm-12">
                        <h4><strong>Gender</strong></h4>
                        <div class="row">
                            <div class="col-sm-6 option">
                                <input id="male" value="male" name="w" checked="" type="radio" runat="server"/>
                                <label for="male"><strong>Male</strong></label>
                            </div>
                            <div class="col-sm-6 option">
                                <input id="female" value="female" name="w" type="radio" runat="server"/>
                                <label for="female"><strong>Female</strong></label>
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="row">
                    <div class="col-sm-4">
                        <h4><strong>Gender</strong></h4>
                    </div>
                    <div class="option col-sm-4">
                        <input id="male" value="male" name="w" checked="" type="radio" runat="server"/>
                        <label for="male"><strong>Male</strong></label>
                    </div>
                    <div class="option col-sm-4">
                        <input id="female" value="female" name="w" type="radio" runat="server"/>
                        <label for="female"><strong>Female</strong></label>
                    </div>
                </div>--%>
                <hr />
                <div class="row">
                    <div class="col-sm-6">
                        <h4><strong>Age</strong></h4>
                        <div class="tboption">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Years" type="Number" min="12" max="80"></asp:TextBox><br />
                        </div>                        
                    </div>
                    <div class="col-sm-6">
                        <h4><strong>Bodyweight</strong></h4>
                        <div class="tboption">
                            <asp:TextBox ID="TbBodyWeight" runat="server" placeholder="Pounds" type="Number" min ="90" max ="600" required="true"></asp:TextBox>
                        </div>                     
                    </div>
                </div>
                <%--<div class="row">
                    <div class="col-sm-12">
                        <h4><strong>Bodyweight</strong></h4>
                        <asp:TextBox ID="TbBodyWeight" runat="server" placeholder="Pounds" class="textbox" type="Number" min ="90" max ="600" required="true"></asp:TextBox>
                    </div>
                </div>--%>
                <hr />
                <div class="row">
                    <div class="col-sm-12">
                        <h4><strong>Activity level</strong></h4>
                        <div class="row">
                            <div class="option col-sm-6">
                                <input id="Activity1" value="Activity1" name="Activity" checked="" type="radio" runat="server"/>
                                <label for="Activity1"><a href="#" data-toggle="popover" data-placement="auto" data-trigger="focus" data-content="The day is spent mainly sitting down (Driver, Desk job)."><strong>Light</strong></a></label>
                            </div>
                            <div class="option col-sm-6">
                                <input id="Activity2" value="Activity2" name="Activity" type="radio" runat="server"/>
                                <label for="Activity2"><a href="#" data-toggle="popover" data-placement="auto" data-trigger="focus" data-content="The day is spent mainly on your feet (Teacher, Salesman)."><strong>Moderate</strong></a></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="option col-sm-6">
                                <input id="Activity3" value="Activity3" name="Activity" type="radio" runat="server"/>
                                <label for="Activity3"><a href="#" data-toggle="popover" data-placement="auto" data-trigger="focus" data-content="The day is spent mainly doing physical activities (Waitress, Mailman)."><strong>Substantial</strong></a></label>
                            </div>
                            <div class="option col-sm-6">
                                <input id="Activity4" value="Activity4" name="Activity" type="radio" runat="server"/>
                                <label for="Activity4"><a href="#" data-toggle="popover" data-placement="auto" data-trigger="focus" data-content="The day is spent mainly doing physical labour (Carpenter, Builder)."><strong>Extreme</strong></a></label>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-sm-12">
                        <h4><strong>Consume mostly</strong></h4>
                        <div class="row">
                            <div class="option col-sm-6">
                                <input id="Food1" value="Food1" name="Food" checked="" type="radio" runat="server"/>
                                <label for="Food1"><a href="#" data-toggle="popover" data-placement="auto" data-trigger="focus" data-content="Candies, Cereals."><strong>High Carbs</strong></a></label>
                            </div>
                            <div class="option col-sm-6">
                                <input id="Food2" value="Food2" name="Food" type="radio" runat="server"/>
                                <label for="Food2"><a href="#" data-toggle="popover" data-placement="auto" data-trigger="focus" data-content="Tomato soup, broccoli."><strong>Moderate Carbs</strong></a></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="option col-sm-6">
                                <input id="Food3" value="Food3" name="Food" type="radio" runat="server"/>
                                <label for="Food3"><a href="#" data-toggle="popover" data-placement="auto" data-trigger="focus" data-content="Tuna, Lean mince."><strong>Moderate Fats</strong></a></label>
                            </div>
                            <div class="option col-sm-6">
                                <input id="Food4" value="Food4" name="Food" type="radio" runat="server"/>
                                <label for="Food4"><a href="#" data-toggle="popover" data-placement="auto" data-trigger="focus" data-content="Avocado, Nuts."><strong>High Fats</strong></a></label>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <hr />
                <div class="row">
                    <div class="">
                        <asp:Button ID="Calculate" class="calculate" runat="server" OnClick="Calculate_Click" Text="Calculate" />
                    </div>
                     <br />
                     <div class="">
                        <asp:Label ID="WriteCalculation" class="calculateText" runat="server" Text=""></asp:Label>
                     </div>
                </div>
            </div>
        </div>
    </form>
    <%-- Scripts --%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="script.js"></script>
    <script> $(function () {
    $('[data-toggle="popover"]').popover();
});</script>
</body>
</html>
