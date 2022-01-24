SELECT
	Models.Name as [Марка],
	Modifications.Name as [Модификация],
	Engines.Name as [Двигатель],
	Transmissions.Name as [Трансмиссия],
	Color.Name as [Цвет]
FROM
	Models
JOIN Modifications ON Modifications.ModelId = Models.Id
JOIN ColorModification ON ColorModification.ModificationId = Modifications.Id
JOIN Color ON Color.Id = ColorModification.ColorId
JOIN EngineModification ON EngineModification.ModificationId = Modifications.Id
JOIN Engines ON Engines.Id = EngineModification.EngineId
JOIN Transmissions ON Transmissions.Id = Engines.TransmissionId