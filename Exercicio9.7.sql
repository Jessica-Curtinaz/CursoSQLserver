/* 7. Calcule a SOMA TOTAL de AMOUNT referente � tabela FactStrategyPlan destinado aos
cen�rios: Actual e Budget.*/

SELECT
	ScenarioName AS 'Cenario',
	SUM(Amount) AS 'Total'
FROM
	FactStrategyPlan
INNER JOIN DimScenario
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
GROUP BY ScenarioName
HAVING ScenarioName IN ('Actual', 'Budget')