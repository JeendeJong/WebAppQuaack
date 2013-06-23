using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Security;

namespace WebAppQuaack.Providers
{
    public class MyMembershipProvider : MembershipProvider
    {
        public override string ApplicationName
        {
            get
            {
                return "WebAppQuaack";
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public override bool ChangePassword(string username, string oldPassword, string newPassword)
        {
            var ctx = new QuaackEntities();

            var q = (from u in ctx.profile where u.username == username && u.password == oldPassword select u).FirstOrDefault();
            if (q != null)
            {
                q.password = newPassword;

                ctx.SaveChanges();
                return true;
            }
            return false;

        }

        public override bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer)
        {
            throw new NotImplementedException();
        }

        public override MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status)
        {

            profile n = new profile();

            n.username = username;
            n.password = password;
            n.email = email;
            n.verificationpending = true;
            n.verficationpendingdatetime = DateTime.Now;

            var ctx = new QuaackEntities();
            ctx.profile.Add(n);
            ctx.SaveChanges();





            var link = string.Format("http://localhost:2524/CheckMe.aspx?id={0}", n.profileid.ToString());

            MailMessage mail = new MailMessage("nohiteam1@gmail.com", n.email, "Welkom", link);
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.EnableSsl = true;
            smtp.Port = 587;
            System.Net.NetworkCredential c = new System.Net.NetworkCredential();
            c.UserName = "nohiteam1@gmail.com";
            //Password hardcoded. Andere manier verzinnen.
            c.Password = "!NOHIteam";
            smtp.Credentials = c;
            // Exception handling toevoegen.
            smtp.Send(mail);


            status = MembershipCreateStatus.Success;
            return GetUser(username, true);


        }

        public override bool DeleteUser(string username, bool deleteAllRelatedData)
        {
            throw new NotImplementedException();
        }

        public override bool EnablePasswordReset
        {
            get { throw new NotImplementedException(); }
        }

        public override bool EnablePasswordRetrieval
        {
            get { throw new NotImplementedException(); }
        }

        public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override int GetNumberOfUsersOnline()
        {
            throw new NotImplementedException();
        }

        public override string GetPassword(string username, string answer)
        {
            throw new NotImplementedException();
        }

        public override MembershipUser GetUser(string username, bool userIsOnline)
        {
            var ctx = new QuaackEntities();
            var query = (from u in ctx.profile where u.username == username select u).FirstOrDefault();

            if (query == null)
                return null;
            else
            {
                MembershipUser memUser = new MembershipUser("MyMembershipProvider",
                                               username, query.profileid, query.email,
                                               string.Empty, string.Empty,
                                               true, false, DateTime.MinValue,
                                               DateTime.MinValue,
                                               DateTime.MinValue,
                                               DateTime.Now, DateTime.Now);



                return memUser;
            }
        }

        public override MembershipUser GetUser(object providerUserKey, bool userIsOnline)
        {
            throw new NotImplementedException();
        }

        public override string GetUserNameByEmail(string email)
        {
            throw new NotImplementedException();
        }

        public override int MaxInvalidPasswordAttempts
        {
            get { return 10; }
        }

        public override int MinRequiredNonAlphanumericCharacters
        {
            get { return 0; }
        }

        public override int MinRequiredPasswordLength
        {
            get { return 5; }
        }

        public override int PasswordAttemptWindow
        {
            get { throw new NotImplementedException(); }
        }

        public override MembershipPasswordFormat PasswordFormat
        {
            get { throw new NotImplementedException(); }
        }

        public override string PasswordStrengthRegularExpression
        {
            get { throw new NotImplementedException(); }
        }

        public override bool RequiresQuestionAndAnswer
        {
            get { return false; }
        }

        public override bool RequiresUniqueEmail
        {
            get { return false; }
        }

        public override string ResetPassword(string username, string answer)
        {
            throw new NotImplementedException();
        }

        public override bool UnlockUser(string userName)
        {
            throw new NotImplementedException();
        }

        public override void UpdateUser(MembershipUser user)
        {
            throw new NotImplementedException();
        }

        public override bool ValidateUser(string username, string password)
        {
            var ctx = new QuaackEntities();
            
            
            var result = (from r in ctx.profile where r.username == username && r.password == password select r).Count();

            if (result > 0)
                return true;
            else
                return false;
            


        }
    }
}