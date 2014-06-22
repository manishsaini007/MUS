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
        public void FirstMtgPnITest()
        {

            _mtgCalculator.FirstLoanAmount = 50000;
            _mtgCalculator.FirstTerms = 360;
            _mtgCalculator.FirstInterest = 4.35;

            double expectedPnI = Financial.Pmt((_mtgCalculator.FirstInterest / 100) / 12, _mtgCalculator.FirstTerms, 0 - _mtgCalculator.FirstLoanAmount, 0, 0);

            //Assert.AreEqual((Double)Math.Round(expectedPnI,2), (Double)Math.Round(_mtgCalculator.CalculateFirstPnI(), 2),0.10);
            Assert.AreEqual((Double)Math.Round(expectedPnI, 2), 0, 0.10);
        }

        [TestCase()]
        public void SecondMtgPnITest()
        {

            _mtgCalculator.SecondLoanAmount = 10000;
            _mtgCalculator.SecondTerms = 360;
            _mtgCalculator.SecondInterest = 3.50;

            double expectedPnI = Financial.Pmt((_mtgCalculator.SecondInterest / 100) / 12, _mtgCalculator.SecondTerms, 0 - _mtgCalculator.SecondLoanAmount, 0, 0);

            //Assert.AreEqual((Double)Math.Round(expectedPnI,2), (Double)Math.Round(_mtgCalculator.CalculateSecondPnI(), 2), 0.10);
            Assert.AreEqual((Double)Math.Round(expectedPnI, 2), 0, 0.10);
        }

        [TestCase()]
        public void ProposedHousingExpenseTest()
        {

            
            _mtgCalculator.FirstLoanAmount = 50000;
            _mtgCalculator.FirstTerms = 360;
            _mtgCalculator.FirstInterest = 4.35;
            _mtgCalculator.SecondLoanAmount = 10000;
            _mtgCalculator.SecondTerms = 360;
            _mtgCalculator.SecondInterest = 3.50;
            _mtgCalculator.ProposedTaxesHOAInsurance = 500;
            _mtgCalculator.OtherMonthlyDebt = 400;
            _mtgCalculator.MonthlyIncome = 5000;

            double PnIFirst = Financial.Pmt((_mtgCalculator.FirstInterest / 100) / 12, _mtgCalculator.FirstTerms, 0 - _mtgCalculator.FirstLoanAmount, 0, 0);
            double PnISecond = Financial.Pmt((_mtgCalculator.SecondInterest / 100) / 12, _mtgCalculator.SecondTerms, 0 - _mtgCalculator.SecondLoanAmount, 0, 0);
            double expectedHousingExpense = PnIFirst + PnISecond + _mtgCalculator.ProposedTaxesHOAInsurance; 


            Assert.AreEqual((Double)Math.Round(expectedHousingExpense, 2), (Double)Math.Round(_mtgCalculator.CalculateProposedHousingExpense(), 2), 0.10);
        }

        [TestCase()]
        public void ProposedTotalHousingExpenseTest()
        {

            _mtgCalculator.FirstLoanAmount = 50000;
            _mtgCalculator.FirstTerms = 360;
            _mtgCalculator.FirstInterest = 4.35;
            _mtgCalculator.SecondLoanAmount = 10000;
            _mtgCalculator.SecondTerms = 360;
            _mtgCalculator.SecondInterest = 3.50;
            _mtgCalculator.ProposedTaxesHOAInsurance = 500;
            _mtgCalculator.OtherMonthlyDebt = 400;
            _mtgCalculator.MonthlyIncome = 5000;

            double PnIFirst = Financial.Pmt((_mtgCalculator.FirstInterest / 100) / 12, _mtgCalculator.FirstTerms, 0 - _mtgCalculator.FirstLoanAmount, 0, 0);
            double PnISecond = Financial.Pmt((_mtgCalculator.SecondInterest / 100) / 12, _mtgCalculator.SecondTerms, 0 - _mtgCalculator.SecondLoanAmount, 0, 0);
            double expectedTotalHousingExpense = PnIFirst + PnISecond + _mtgCalculator.ProposedTaxesHOAInsurance + _mtgCalculator.OtherMonthlyDebt;

            Assert.AreEqual((Double)Math.Round(expectedTotalHousingExpense,2), (Double)Math.Round(_mtgCalculator.CalculateTotalHousingExpense(), 2), 0.10);
        }

        [TestCase()]
        public void ProposedDTITest()
        {
            _mtgCalculator.FirstLoanAmount = 50000;
            _mtgCalculator.FirstTerms = 360;
            _mtgCalculator.FirstInterest = 4.35;
            _mtgCalculator.SecondLoanAmount = 10000;
            _mtgCalculator.SecondTerms = 360;
            _mtgCalculator.SecondInterest = 3.50;
            _mtgCalculator.ProposedTaxesHOAInsurance = 500;
            _mtgCalculator.OtherMonthlyDebt = 400;
            _mtgCalculator.MonthlyIncome = 5000;

            double PnIFirst = Financial.Pmt((_mtgCalculator.FirstInterest / 100) / 12, _mtgCalculator.FirstTerms, 0 - _mtgCalculator.FirstLoanAmount, 0, 0);
            double PnISecond = Financial.Pmt((_mtgCalculator.SecondInterest / 100) / 12, _mtgCalculator.SecondTerms, 0 - _mtgCalculator.SecondLoanAmount, 0, 0);
            double HousingExpense = PnIFirst + PnISecond + _mtgCalculator.ProposedTaxesHOAInsurance;
            double expectedDTI = (HousingExpense / _mtgCalculator.MonthlyIncome) * 100;

            Assert.AreEqual((Double)Math.Round(expectedDTI,2), (Double)Math.Round(_mtgCalculator.CalculateDTIRatio(), 2), 0.10);
        }

        [TestCase()]
        public void ProposedTDTITest()
        {
            _mtgCalculator.FirstLoanAmount = 50000;
            _mtgCalculator.FirstTerms = 360;
            _mtgCalculator.FirstInterest = 4.35;
            _mtgCalculator.SecondLoanAmount = 10000;
            _mtgCalculator.SecondTerms = 360;
            _mtgCalculator.SecondInterest = 3.50;
            _mtgCalculator.ProposedTaxesHOAInsurance = 500;
            _mtgCalculator.OtherMonthlyDebt = 400;
            _mtgCalculator.MonthlyIncome = 5000;

            double PnIFirst = Financial.Pmt((_mtgCalculator.FirstInterest / 100) / 12, _mtgCalculator.FirstTerms, 0 - _mtgCalculator.FirstLoanAmount, 0, 0);
            double PnISecond = Financial.Pmt((_mtgCalculator.SecondInterest / 100) / 12, _mtgCalculator.SecondTerms, 0 - _mtgCalculator.SecondLoanAmount, 0, 0);
            double totalHousingExpense = PnIFirst + PnISecond + _mtgCalculator.ProposedTaxesHOAInsurance + _mtgCalculator.OtherMonthlyDebt;
            double expectedTDTI = (totalHousingExpense / _mtgCalculator.MonthlyIncome) * 100;

            Assert.AreEqual((Double)Math.Round(expectedTDTI,2), (Double)Math.Round(_mtgCalculator.CalculateTDTIRatio(), 2), 0.10);
        }

        [TestFixtureTearDown()]
        public void Teardown()
        {
            _mtgCalculator = null;
        }

    }
}
