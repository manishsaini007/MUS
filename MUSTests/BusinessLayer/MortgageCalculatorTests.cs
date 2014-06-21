using System;
using System.Collections.Generic;
using System.Text;
using NUnit.Framework;
using MortgageUnderwritingSystem.BusinessLayer;

namespace MUSTests.BusinessLayer
{
    [TestFixture()]
    public class MortgageCalculatorTests
    {
        private MortgageCalculator _mtgCalculator;

        [TestFixtureSetUp()]
        public void Startup()
        {
            _mtgCalculator = new MortgageCalculator();
        }

        [TestCase()]
        public void FirstMtgPnITest1()
        {
            Assert.AreEqual(1, 1,"The values must be equal");
        }

        [TestFixtureTearDown()]
        public void Teardown()
        {
            _mtgCalculator = null;
        }

    }
}
