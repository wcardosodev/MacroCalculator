using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    //declare userbodyweight
    int UserBodyWeight;
    double UserPro;
    int FatPerDay;
    int UserCarb;
    double UserCal;
    int UserCals;
    double UserFat;
    int CalPerDay;
    double CarbPerDay;
    int UserGoal;
    //int userCarb;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void BodyWeight(object sender, EventArgs e)
    {
        //convert tbBodyWeight into an int and call it userBodyWeight
        UserBodyWeight = Convert.ToInt32(TbBodyWeight.Text);

    }
    /*-----------------------------------------------------------------------------------*/

    public void CalcCal(object sender, EventArgs e)
    {
        //initialise activity level to 0
        int activityLevel = 0;
        //int userBodyWeight;
        //userCarb = Convert.ToInt32(tbCalcCal.Text);
        //int userCal;

        //string selection = RadioButtonList2.SelectedValue;
        //radio buttons which control multiplication of the usercarb
        if (Activity1.Checked) //(RadioButtonList2.SelectedValue == "Light")
        {
            //initialise the activity levels
            //take uBW and aL and multiply and put sum in usercarb
            //take userCarb and convert to string and put inside the (textbox) tbCalcCal
            activityLevel = 11;
            UserCal = (UserBodyWeight * activityLevel);
            
            //TbCalcCal.Text = UserCal.ToString();
        }
        else if (Activity2.Checked)//(RadioButtonList2.SelectedValue == "Moderate")
        {
            activityLevel = 12;
            UserCal = (UserBodyWeight * activityLevel);
            
            //TbCalcCal.Text = UserCal.ToString();
        }
        else if (Activity3.Checked) //(RadioButtonList2.SelectedValue == "Very")
        {
            activityLevel = 13;
            UserCal = (UserBodyWeight * activityLevel);

            //TbCalcCal.Text = UserCal.ToString();
        }
        else if (Activity4.Checked)//(RadioButtonList2.SelectedValue == "Extremely")
        {
            activityLevel = 14;
            UserCal = (UserBodyWeight * activityLevel);

            //TbCalcCal.Text = UserCal.ToString();
        }

    }

    /*-----------------------------------------------------------------------------------*/
    public void CalcPro(object sender, EventArgs e)
    {
        ////convert tbBodyWeight into an int and call it userProt
        UserPro = Convert.ToInt32(TbBodyWeight.Text);
        
        //TbCalcPro.Text = UserPro.ToString();
    }
    /*-----------------------------------------------------------------------------------*/

    public void CalcFat(object sender, EventArgs e)
    {
        //initialise foodchoice to 0
        //int foodChoice = 0;
        //declare userfat and fat
        double fat;

        //radio buttons for choice of food
        if (Food1.Checked)
        {
            //change foodchoice based on radio choice
            fat = 0.3;
            UserFat = (UserBodyWeight * fat);

            //TbCalcFat.Text = UserFat.ToString();
        }
        else if (Food2.Checked)
        {
            fat = 0.4;
            UserFat = (UserBodyWeight * fat);

            //TbCalcFat.Text = UserFat.ToString();
        }
        else if (Food3.Checked)
        {
            fat = 0.5;
            UserFat = (UserBodyWeight * fat);

            //TbCalcFat.Text = UserFat.ToString();
        }
        else if (Food4.Checked)
        {
            fat = 0.6;
            UserFat = (UserBodyWeight * fat);

            //TbCalcFat.Text = UserFat.ToString();
        }
    }
    /*-----------------------------------------------------------------------------------*/

    public void CalcCarb(object sender, EventArgs e)
    {
        //UserGoal = Convert.ToInt32(TbCalcCal.Text);

        UserGoal = Convert.ToInt32(UserCal);

        //FatPerDay = Convert.ToInt32(TbCalcFat.Text);

        //FatPerDay = UserFat;
        FatPerDay = Convert.ToInt32(UserFat);

        UserCals = Convert.ToInt32((UserPro * 4) + (FatPerDay * 9));
        //calories aiming for
        CalPerDay = (UserGoal - UserCals);
        CarbPerDay = Convert.ToDouble((CalPerDay / 4));
        
        //TbCalcCarb.Text = CarbPerDay.ToString();
        //}


    }

    public void Calculate_Click(object sender, EventArgs e)
    {
        BodyWeight(sender, e);
        CalcCal(sender, e);
        CalcPro(sender, e);
        CalcFat(sender, e);
        CalcCarb(sender, e);

        //CalcCal_Click(object sender, EventArgs e);
        WriteCalculation.Text = (" <strong>Calories:</strong> " + UserCal + " per day" + "<br/>" + " <strong>Protein:</strong> " + UserPro + " grams per day"
            + "<br/>" + " <strong>Fat:</strong> " + UserFat + " grams per day" + "<br/>" + " <strong>Carbs:</strong> " + CarbPerDay + " grams per day");
    }
}
