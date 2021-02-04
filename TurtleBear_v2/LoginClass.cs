using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

namespace TurtleBear_v2
{
    public static class LoginClass
    {
        public static bool NewUser(string user, string pass, string phone)
        {
            if (!CheckAccountDupe(user))
            {
                List<User> uTmp = ReadUser();
                uTmp.Add(new User(user, GetMD5Hash(pass), phone));
                WriteUser(uTmp);
                return true;
            }
            else
                return false;
        }
        public static bool ChkLog(string user, string pass)
        {
            bool chkLog = false;
            foreach (User u in ReadUser())
                if (user == u.username && GetMD5Hash(pass) == u.password)
                    chkLog = true;
            return chkLog;
        }
        private static List<User> ReadUser()
        {
            List<User> uRet = new List<User>();
            try
            {
                var dataFile = System.Web.HttpContext.Current.Server.MapPath("Users.bin");
                using (Stream stream = File.Open(dataFile, FileMode.Open))
                {
                    BinaryFormatter bf = new BinaryFormatter();
                    uRet = (List<User>)bf.Deserialize(stream);
                }
            }
            catch
            {

            }
            return uRet;
        }
        private static void WriteUser(List<User> uWrite)
        {
            try
            {
                var dataFile = System.Web.HttpContext.Current.Server.MapPath("Users.bin");
                using (Stream stream = File.Open(dataFile, FileMode.OpenOrCreate))
                {
                    BinaryFormatter bf = new BinaryFormatter();
                    bf.Serialize(stream, uWrite);
                }
            }
            catch
            {

            }
        }
        private static string GetMD5Hash(string str)
        {
            MD5CryptoServiceProvider MD5ServiceProvider = new MD5CryptoServiceProvider();
            byte[] bytes = ASCIIEncoding.Default.GetBytes(str);
            byte[] encoded = MD5ServiceProvider.ComputeHash(bytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < encoded.Length; i++)
                sb.Append(encoded[i].ToString("X2"));
            return sb.ToString();
        }
        private static bool CheckAccountDupe(string userdupe)
        {
            bool dchk = false;
            foreach (User u in ReadUser())
                if (userdupe == u.username)
                    dchk = true;
            return dchk;
        }

    }

    [Serializable()]
    class User
    {
        public string username { get; set; }
        public string password { get; set; }
        public string phone { get; set; }
        public User(string username, string password, string phone)
        {
            this.username = username;
            this.password = password;
            this.phone = phone;
        }
    }
}