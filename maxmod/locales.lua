Locales = {}

-- Arabic
Locales["ar"] = {
    ["max_vehicle_mods"] = "تم تطبيق أقصى تعديلات على المركبة بنجاح",
    ["not_in_vehicle"] = "يجب أن تكون داخل مركبة لاستخدام هذا الأمر",
    ["player_not_found"] = "لم يتم العثور على اللاعب",
    ["no_permission"] = "ليس لديك صلاحية لاستخدام هذا الأمر",
    ["framework_error"] = "خطأ في نظام الإطار يرجى مراجعة الإعدادات"
}

-- English
Locales["en"] = {
    ["max_vehicle_mods"] = "Max vehicle mods applied successfully",
    ["not_in_vehicle"] = "You must be inside a vehicle to use this command",
    ["player_not_found"] = "Player not found",
    ["no_permission"] = "You do not have permission to use this command",
    ["framework_error"] = "Invalid framework Please check your config"
}

-- Chinese
Locales["cn"] = {
    ["max_vehicle_mods"] = "车辆已成功应用最大改装",
    ["not_in_vehicle"] = "你必须在车内才能使用此命令",
    ["player_not_found"] = "未找到玩家",
    ["no_permission"] = "你没有权限使用此命令",
    ["framework_error"] = "框架设置无效 请检查配置"
}

-- Turkish
Locales["tr"] = {
    ["max_vehicle_mods"] = "Araç maksimum modlarla başarıyla güncellendi",
    ["not_in_vehicle"] = "Bu komutu kullanmak için araçta olmalısın",
    ["player_not_found"] = "Oyuncu bulunamadı",
    ["no_permission"] = "Bu komutu kullanma izniniz yok",
    ["framework_error"] = "Geçersiz framework Lütfen yapılandırmayı kontrol edin"
}

-- French
Locales["fr"] = {
    ["max_vehicle_mods"] = "Modifications maximales appliquées avec succès",
    ["not_in_vehicle"] = "Vous devez être dans un véhicule pour utiliser cette commande",
    ["player_not_found"] = "Joueur introuvable",
    ["no_permission"] = "Vous n avez pas la permission d utiliser cette commande",
    ["framework_error"] = "Framework invalide Veuillez vérifier la configuration"
}

-- Spanish
Locales["es"] = {
    ["max_vehicle_mods"] = "Modificaciones máximas aplicadas con éxito",
    ["not_in_vehicle"] = "Debes estar dentro de un vehículo para usar este comando",
    ["player_not_found"] = "Jugador no encontrado",
    ["no_permission"] = "No tienes permiso para usar este comando",
    ["framework_error"] = "Framework inválido Revisa tu configuración"
}

-- German
Locales["de"] = {
    ["max_vehicle_mods"] = "Maximale Fahrzeugmods erfolgreich angewendet",
    ["not_in_vehicle"] = "Du musst in einem Fahrzeug sein um diesen Befehl zu nutzen",
    ["player_not_found"] = "Spieler nicht gefunden",
    ["no_permission"] = "Du hast keine Berechtigung diesen Befehl zu verwenden",
    ["framework_error"] = "Ungültiges Framework Bitte überprüfe deine Konfiguration"
}

-- Russian
Locales["ru"] = {
    ["max_vehicle_mods"] = "Максимальные модификации успешно применены",
    ["not_in_vehicle"] = "Вы должны быть в транспортном средстве чтобы использовать эту команду",
    ["player_not_found"] = "Игрок не найден",
    ["no_permission"] = "У вас нет прав на использование этой команды",
    ["framework_error"] = "Неверный фреймворк Проверьте конфигурацию"
}

-- Portuguese
Locales["pt"] = {
    ["max_vehicle_mods"] = "Modificações máximas aplicadas com sucesso",
    ["not_in_vehicle"] = "Você precisa estar em um veículo para usar este comando",
    ["player_not_found"] = "Jogador não encontrado",
    ["no_permission"] = "Você não tem permissão para usar este comando",
    ["framework_error"] = "Framework inválido Verifique a configuração"
}

-- Italian
Locales["it"] = {
    ["max_vehicle_mods"] = "Modifiche massime applicate con successo",
    ["not_in_vehicle"] = "Devi essere in un veicolo per usare questo comando",
    ["player_not_found"] = "Giocatore non trovato",
    ["no_permission"] = "Non hai il permesso per usare questo comando",
    ["framework_error"] = "Framework non valido Controlla la configurazione"
}

-- Japanese
Locales["jp"] = {
    ["max_vehicle_mods"] = "最大の車両改造が適用されました",
    ["not_in_vehicle"] = "このコマンドを使うには車に乗っている必要があります",
    ["player_not_found"] = "プレイヤーが見つかりません",
    ["no_permission"] = "このコマンドを使用する権限がありません",
    ["framework_error"] = "無効なフレームワーク 設定を確認してください"
}

-- Korean
Locales["kr"] = {
    ["max_vehicle_mods"] = "차량 최대 모드가 성공적으로 적용되었습니다",
    ["not_in_vehicle"] = "이 명령어를 사용하려면 차량 안에 있어야 합니다",
    ["player_not_found"] = "플레이어를 찾을 수 없습니다",
    ["no_permission"] = "이 명령어를 사용할 권한이 없습니다",
    ["framework_error"] = "잘못된 프레임워크 설정을 확인하세요"
}


function _U(msg)
    local lang = Config.Locale or "en"
    return Locales[lang][msg] or "Translation missing"
end
