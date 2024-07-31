using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankQueue
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["sessionQueue"] == null)
            {
                Queue<int> tokenQueue = new Queue<int>();
                Session["sessionQueue"] = tokenQueue;
                if (tokenQueue.Count == 0)
                {
                    Details.Text = $"No one has been served";
                }
            }
        }


        protected void prtintTokenBtn_Click(object sender, EventArgs e)
        {
            Queue<int> RemainTokens = (Queue<int>)Session["sessionQueue"];
            Label1.Text = $"There are {RemainTokens.Count} Customers before you";

            if (Session["lastTokenSession"] == null)
            {
                Session["lastTokenSession"] = 0;
            }

            int nextTokenNumberToBeIssued = (int)Session["lastTokenSession"] + 1;
            Session["lastTokenSession"] = nextTokenNumberToBeIssued;
            RemainTokens.Enqueue(nextTokenNumberToBeIssued);
            showTokensInListBox(RemainTokens);
        }

        private void showTokensInListBox(Queue<int> RemainTokens)
        {
            listBox.Items.Clear();
            foreach (int token in RemainTokens)
            {
                listBox.Items.Add(token.ToString());
            }
        }

        protected void Details_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            OnClickNextBtnMethod(TextBox_1);
        }


        protected void btn2_Click(object sender, EventArgs e)
        {
            OnClickNextBtnMethod(TextBox_2);
        }
        protected void btn3_Click(object sender, EventArgs e)
        {
            OnClickNextBtnMethod(TextBox_3);

        }
        private void OnClickNextBtnMethod(TextBox textBox)
        {
            Queue<int> ququeInList = (Queue<int>)Session["sessionQueue"];
            if (ququeInList.Count == 0)
            {
                Details.Text = $"NO one To be Served";
                Label1.Text = $"There are {ququeInList.Count.ToString()} Customers before you";
                textBox.Text = "Waiting Customers";
            }
            else
            {
                int removedNum = ququeInList.Dequeue();
                listBox.Items.Remove(removedNum.ToString());
                Details.Text = $"Token Number : {removedNum.ToString()} ,please go to Counter {textBox.ID.Split('_')[1]}";
                textBox.Text = removedNum.ToString();
                Label1.Text = $"There are {ququeInList.Count.ToString()} Customers before you";
            }
        }
    }
}