using System;
using System.Collections.Generic;
using System.Text;
using NUnit.Framework;
using NUnit.Framework.Constraints;
using MortgageUnderwritingSystem.BusinessLayer;
using Microsoft.VisualBasic;

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

            _mtgCalculator.FirstLoanAmount = 50000;
            _mtgCalculator.FirstTerms = 360;
            _mtgCalculator.FirstInterest = 4.35;

            double expectedPnI = Math.Round(Financial.Pmt((_mtgCalculator.FirstInterest / 100) / 12, _mtgCalculator.FirstTerms, 0 - _mtgCalculator.FirstLoanAmount, 0, 0),2);

            Assert.AreEqual((Double)expectedPnI, (Double)Math.Round(_mtgCalculator.CalculateFirstPnI(), 2),0.10);
        }

        [TestCase()]
        public void SecondMtgPnITest1()
        {

            _mtgCalculator.SecondLoanAmount = 10000;
            _mtgCalculator.SecondTerms = 360;
            _mtgCalculator.SecondInterest = 3.50;

            double expectedPnI = Math.Round(Financial.Pmt((_mtgCalculator.SecondInterest / 100) / 12, _mtgCalculator.SecondTerms, 0 - _mtgCalculator.SecondLoanAmount, 0, 0), 2);

            Assert.AreEqual((Double)expectedPnI, (Double)Math.Round(_mtgCalculator.CalculateSecondPnI(), 2), 0.10);
        }

        [TestFixtureTearDown()]
        public void Teardown()
        {
            _mtgCalculator = null;
        }

    }
}
