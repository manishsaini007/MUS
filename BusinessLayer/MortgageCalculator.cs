using System;
using System.Collections.Generic;
using System.Web;
using Microsoft.VisualBasic;

namespace MortgageUnderwritingSystem.BusinessLayer
{
    public class MortgageCalculator
    {

        #region Properties

        private double _firstLoanAmount = 0;
        public double FirstLoanAmount
        {
            get { return _firstLoanAmount; }
            set { _firstLoanAmount = value; }
        }

        private double _secondLoanAmount = 0;
        public double SecondLoanAmount
        {
            get { return _secondLoanAmount; }
            set { _secondLoanAmount = value; }
        }

        private double _firstTerms = 360;
        public double FirstTerms
        {
            get { return _firstTerms; }
            set { _firstTerms = value; }
        }

        private double _secondTerms = 360;
        public double SecondTerms
        {
            get { return _secondTerms; }
            set { _secondTerms = value; }
        }

        private double _firstInterest = 0;
        public double FirstInterest
        {
            get { return _firstInterest; }
            set { _firstInterest = value; }
        }

        private double _secondInterest = 0;
        public double SecondInterest
        {
            get { return _secondInterest; }
            set { _secondInterest = value; }
        }

        private double _monthlyIncome = 0;
        public double MonthlyIncome
        {
            get { return _monthlyIncome; }
            set { _monthlyIncome = value; }
        }

        private double _proposedTaxesHOAInsurance = 0;
        public double ProposedTaxesHOAInsurance
        {
            get { return _proposedTaxesHOAInsurance; }
            set { _proposedTaxesHOAInsurance = value; }
        }

        private double _otherMonthlyDebt = 0;
        public double OtherMonthlyDebt
        {
            get { return _otherMonthlyDebt; }
            set { _otherMonthlyDebt = value; }
        }

        #endregion

        #region Public Methods

        public double CalculateFirstPnI()
        {
            return Math.Round(Financial.Pmt((this.FirstInterest / 100) / 12, this.FirstTerms, 0 - this.FirstLoanAmount, 0, 0), 2); ;
        }

        public double CalculateSecondPnI()
        {
            return Math.Round(Financial.Pmt((this.SecondInterest / 100) / 12, this.SecondTerms, 0 - this.SecondLoanAmount, 0, 0), 2);
        }

        public double CalculateProposedHousingExpense()
        {
            return 0;
        }

        public double CalculateTotalHousingExpense()
        {
            return 0;
        }

        public double CalculateDTIRatio()
        {
            return 0;
        }

        public double CalculateTDTIRatio()
        {
            return 0;
        }

        public double CalculateLTV()
        {
            return 0;
        }

        public double CalculateCLTV()
        {
            return 0;
        }

        #endregion

    }
}