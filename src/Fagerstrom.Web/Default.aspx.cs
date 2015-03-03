using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fagerstrom.Core;

namespace PlayingAbout
{
    public partial class Default : System.Web.UI.Page{
    
        protected void Page_Load(object sender, EventArgs e)
        {
           this.btnSubmit.Click +=btnSubmit_Click;
        }
        // need to parse the string into an interger tomorrow (int.parse) so that the selected values can be totalled up at the end.
        private void btnSubmit_Click(object sender, EventArgs e)
        {
            int question1 = int.Parse (this.ddQuestion1.SelectedValue);
            int question2 = int.Parse (this.ddQuestion2.SelectedValue);
            int question3 = int.Parse (this.ddQuestion3.SelectedValue);
            int question4 = int.Parse (this.ddQuestion4.SelectedValue);
            int question5 = int.Parse (this.ddQuestion5.SelectedValue);
            int question6 = int.Parse (this.ddQuestion6.SelectedValue);

            var fagerstrom = new FagerstromScore(question1, question2, question3, question4, question5, question6);

            var da = new FagerstromScoreDataAccess();
            da.Save(fagerstrom);
            
            var message = fagerstrom.GetMessage();

           

            this.message.InnerText = message;    
    
        }


     

    }
}