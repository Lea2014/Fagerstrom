<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PlayingAbout.Default" %>
  
  <!DOCTYPE html>
  
  <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
      <title>
      </title>
      <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>
      
      <!-- jQuery library -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js">
      </script>
      
      <!-- Latest compiled JavaScript -->
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js">
      </script>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
    </head>
    <body>
    <form id="form1" runat="server">      
      <div class="container-fluid">
        <h1 id="h1" runat="server">
          Please answer the questions below to work out your Fagerstrom score.
        </h1>
        <div class="row">
          <div class="col-lg-12">
            <!-- Put your form in here -->
              <div class="input-group">
                <asp:Label  AssociatedControlID="ddQuestion1" Text="How many cigarettes do you smoke per day?" runat="server">
                </asp:Label>
                <asp:DropDownList id="ddQuestion1" runat="server" CssClass="form-control">
                  <asp:ListItem Text="10 or less" Value="0">
                  </asp:ListItem>
                  <asp:ListItem Text="11 - 20" Value="1">
                  </asp:ListItem>
                  <asp:ListItem Text="21 - 30" Value="2">
                  </asp:ListItem>
                  <asp:ListItem Text="31 or more" Value="3">
                  </asp:ListItem>
                </asp:DropDownList>
              </div>
              
              <div class="input-group">
                <asp:Label  AssociatedControlID="ddQuestion2" Text="How soon after you wake up do you smoke your first cigarette?" runat="server">
                </asp:Label>
                <asp:DropDownList id="ddQuestion2" runat="server" CssClass="form-control">
                  <asp:ListItem Text="0 – 5 mins" Value="3">
                  </asp:ListItem>
                  <asp:ListItem Text="30 mins" Value="2">
                  </asp:ListItem>
                  <asp:ListItem Text="31 -60 mins" Value="1">
                  </asp:ListItem>
                  <asp:ListItem Text="After 60 mins" Value="0">
                  </asp:ListItem>
                </asp:DropDownList>
              </div>
              
              <div class="input-group">
                <asp:Label  AssociatedControlID="ddQuestion3" Text="Do you find it difficult to refrain from smoking in places where smoking is not allowed (e.g. hospitals, government offices, cinemas, libraries etc)?" runat="server">
                </asp:Label>
                <asp:DropDownList id="ddQuestion3" runat="server" CssClass="form-control">
                  <asp:ListItem Text="Yes" Value="1">
                  </asp:ListItem>
                  <asp:ListItem Text="No" Value="0">
                  </asp:ListItem>
                </asp:DropDownList>
              </div>
              
              <div class="input-group">
                <asp:Label  AssociatedControlID="ddQuestion4" Text="Do you smoke more during the first hours after waking than during the rest of the day?" runat="server">
                </asp:Label>
                <asp:DropDownList id="ddQuestion4" runat="server" CssClass="form-control">
                  <asp:ListItem Text="Yes" Value="1">
                  </asp:ListItem>
                  <asp:ListItem Text="No" Value="0">
                  </asp:ListItem>
                </asp:DropDownList>
              </div>
              
              <div class="input-group">
                <asp:Label  AssociatedControlID="ddQuestion5" Text="Which cigarette would you be the most unwilling to give up?" runat="server">
                </asp:Label>
                <asp:DropDownList id="ddQuestion5" runat="server" CssClass="form-control">
                  <asp:ListItem Text="First in the morning" Value="1">
                  </asp:ListItem>
                  <asp:ListItem Text="Any of the others" Value="0">
                  </asp:ListItem>
                </asp:DropDownList>
              </div>
              
              <div class="input-group">
                <asp:Label  AssociatedControlID="ddQuestion6" Text="Do you smoke even when you are very ill?" runat="server">
                </asp:Label>
                <asp:DropDownList id="ddQuestion6" runat="server" CssClass="form-control">
                  <asp:ListItem Text="Yes" Value="1">
                  </asp:ListItem>
                  <asp:ListItem Text="No" Value="0">
                  </asp:ListItem>
                </asp:DropDownList>
              </div>                        
  
        </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <div class="btn-group" role="group" aria-label="...">
                <asp:Button ID="btnSubmit" Text="Submit" runat="server" CssClass="btn btn-success navbar-btn" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <p runat="server" id="message"></p>
          </div>
        </div>
      </div>
    </form>
    </body>
  </html>
  