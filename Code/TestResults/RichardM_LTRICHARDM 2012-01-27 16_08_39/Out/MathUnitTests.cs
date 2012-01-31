using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace MvcWebRole1.Tests.Scripts
{
    /// <summary>
    /// Summary description for MathUnitTests
    /// </summary>
    [TestClass]
    public class MathUnitTests
    {
        public MathUnitTests()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        //
        // You can use the following additional attributes as you write your tests:
        //
        // Use ClassInitialize to run code before running the first test in the class
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // Use ClassCleanup to run code after all tests in a class have run
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        // Use TestInitialize to run code before running each test 
        // [TestInitialize()]
        // public void MyTestInitialize() { }
        //
        // Use TestCleanup to run code after each test has run
        // [TestCleanup()]
        // public void MyTestCleanup() { }
        //
        #endregion

        [TestMethod]
        public void TestJsSyntax()
        {
            var jsHelper = new JavaScriptTestHelper(this.TestContext);

            // Load JavaScript files
            // couldn't these two go into TestInitialize?
            jsHelper.LoadFile("JavaScriptUnitTestFramework.js"); // file with our asserts.  
            jsHelper.LoadFile(@"..\..\..\MvcWebRole1\Scripts\Math.js"); // our JS to test

            jsHelper.LoadFile("MathTests.js"); // file that actually has the method calling our JS
        }

        [TestMethod]
        public void TestAddNumbers()
        {
            var jsHelper = new JavaScriptTestHelper(this.TestContext);

            // Load JavaScript files
            // couldn't these two go into TestInitialize?
            jsHelper.LoadFile("JavaScriptUnitTestFramework.js"); // file with our asserts.  
            jsHelper.LoadFile(@"..\..\..\MvcWebRole1\Scripts\Math.js"); // our JS to test

            jsHelper.LoadFile("MathTests.js"); // file that actually has the method calling our JS

            // Execute JavaScript Test
            jsHelper.ExecuteTest("testAddNumbers");
        }

        [TestMethod]
        public void TestAddNumbersSuccess()
        {
            var jsHelper = new JavaScriptTestHelper(this.TestContext);

            // Load JavaScript files
            // couldn't these two go into TestInitialize?
            jsHelper.LoadFile("JavaScriptUnitTestFramework.js"); // file with our asserts.  
            jsHelper.LoadFile(@"..\..\..\MvcWebRole1\Scripts\Math.js"); // our JS to test

            jsHelper.LoadFile("MathTests.js"); // file that actually has the method calling our JS

            // Execute JavaScript Test
            jsHelper.ExecuteTest("testAddNumbersSuccess");
        }
    }
}
