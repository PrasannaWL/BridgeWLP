﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using RuleEngine;
using RuleEngine.Compiler;

namespace SmartERP.Repository.Utility
{
  
    internal sealed class RuleExecutor
    {
        public void ExecuteTaxRules()
        {
            XmlDocument rules = new XmlDocument();

            string directory = AppDomain.CurrentDomain.BaseDirectory + @"\TaxCalculator.xml";

            rules.Load(directory);
            //model
            XmlDocument model = new XmlDocument();
            model.LoadXml(@"<Employee><GrossSalary>900000</GrossSalary>
            <HRA>50000</HRA><Tax></Tax><NetSalary>
            </NetSalary></Employee>");

            ROM rom = Compiler.Compile(rules);
            rom.AddModel("Employee", model);
            rom.Evaluate();
            var tax = model["Employee"]["Tax"].InnerText;
            var NetSalary = model["Employee"]["NetSalary"].InnerText;
            var message = string.Format("Tax: {0} and Net take home salary :{1}", tax, NetSalary);
            
        }
    }
}
