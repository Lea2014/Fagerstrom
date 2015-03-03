using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//created a separate class called fagerstrom score. Reason you may want to call the class in other places. This allows you to do this. 
namespace Fagerstrom.Core
{
    public class FagerstromScore
    {
        public int question1 { get; private set; }
        public int question2 { get; private set; }
        public int question3 { get; private set; }
        public int question4 { get; private set; }
        public int question5 { get; private set; }
        public int question6 { get; private set; }

        public FagerstromScore(int question1, int question2, int question3, int question4, int question5, int question6)
        {
            this.question1 = question1;
            this.question2 = question2;
            this.question3 = question3;
            this.question4 = question4;
            this.question5 = question5;
            this.question6 = question6;
        }

        public string GetMessage()
        {
            var result = question1 + question2 + question3 + question4 + question5 + question6;

            var message = "";

            if (result <= 3)
            {
                message = "Your level of nicotine dependence is still low. You should act now before your level of dependence increases.";
            }

            if (result > 3 && result <= 5)
            {
                message = "Your level of nicotine dependence is moderate. If you don't quit soon, your level of dependence on nicotine will increase until you may be seriously addicted. Act now to end your dependence on nicotine.";
            }

            if (result > 5)
            {
                message = "Your level of dependence is high. You aren't in control of your smoking– it is in control of you! When you make the decision to quit, you may want to talk with your doctor about nicotine replacement therapy or other medications to help you break your addiction.";
            }

            return message;
        }
    }
}
