using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ServiceLayer
{
    public class TestService : ITestService
    {

        public void ThisThrowsInvalidOperationException()
        {
            throw new InvalidOperationException();
        }

        public void ThisNeverThrows()
        {
            
        }

        public string ThisReturnsEmptyString()
        {
            return "";
        }

        public string ThisReturnsNullString()
        {
            return null;
        }

        public string ThisReturnsGoodString()
        {
            return "this is a string";
        }
    }
}
