using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ServiceLayer
{
    public interface ITestService
    {
        void ThisThrowsInvalidOperationException();

        void ThisNeverThrows();

        string ThisReturnsEmptyString();

        string ThisReturnsNullString();

        string ThisReturnsGoodString();
    }
}
