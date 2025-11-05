// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Dr Bèo';

  @override
  String get welcomeMessage => 'Chào mừng đến với Dr Bèo';

  @override
  String get welcomeSubtitle =>
      'Công cụ hỗ trợ cho bác sĩ và sinh viên thực hành tại khoa hồi sức tích cực';

  @override
  String get clinicalScores => 'Thang điểm lâm sàng';

  @override
  String get clinicalScoresDescription => 'Glasgow, APACHE, SOFA...';

  @override
  String get diagnosticTools => 'Công cụ chẩn đoán';

  @override
  String get diagnosticToolsDescription =>
      'Phân tích xét nghiệm, hướng dẫn hình ảnh';

  @override
  String get unitConverter => 'Chuyển đổi';

  @override
  String get unitConverterDescription => 'Chuyển đổi đơn vị y tế';

  @override
  String get labAnalysis => 'Xét nghiệm';

  @override
  String get labAnalysisDescription => 'Phân tích kết quả xét nghiệm';

  @override
  String get abgAnalysisTitle => 'Phân tích khí máu động mạch';

  @override
  String get enterAbgResults => 'Nhập kết quả ABG';

  @override
  String get abgClearAll => 'Xóa tất cả';

  @override
  String get phLabel => 'pH';

  @override
  String get phHint => '7.35-7.45';

  @override
  String get pleaseEnterPh => 'Vui lòng nhập pH';

  @override
  String get invalidPh => 'pH không hợp lệ (6.8-8.0)';

  @override
  String get pco2Label => 'PCO₂ (mmHg)';

  @override
  String get pco2Hint => '35-45';

  @override
  String get pleaseEnterPco2 => 'Vui lòng nhập PCO₂';

  @override
  String get invalidPco2 => 'PCO₂ không hợp lệ';

  @override
  String get po2Label => 'PO₂ (mmHg)';

  @override
  String get po2Hint => '80-100';

  @override
  String get pleaseEnterPo2 => 'Vui lòng nhập PO₂';

  @override
  String get invalidPo2 => 'PO₂ không hợp lệ';

  @override
  String get hco3Label => 'HCO₃⁻ (mEq/L)';

  @override
  String get hco3Hint => '22-26';

  @override
  String get pleaseEnterHco3 => 'Vui lòng nhập HCO₃⁻';

  @override
  String get invalidHco3 => 'HCO₃⁻ không hợp lệ';

  @override
  String get baseExcessLabel => 'Base Excess (mEq/L)';

  @override
  String get baseExcessHint => '-2 đến +2';

  @override
  String get pleaseEnterBe => 'Vui lòng nhập BE';

  @override
  String get invalidBe => 'BE không hợp lệ';

  @override
  String get sao2Label => 'SaO₂ (%)';

  @override
  String get sao2Hint => '95-100';

  @override
  String get pleaseEnterSao2 => 'Vui lòng nhập SaO₂';

  @override
  String get invalidSao2 => 'SaO₂ không hợp lệ (0-100)';

  @override
  String get fio2Label => 'FiO₂ (%)';

  @override
  String get fio2Hint => '21-100';

  @override
  String get pleaseEnterFio2 => 'Vui lòng nhập FiO₂';

  @override
  String get invalidFio2 => 'FiO₂ không hợp lệ (21-100)';

  @override
  String get abgNotesLabel => 'Ghi chú (tùy chọn)';

  @override
  String get abgNotesHint => 'Thông tin bổ sung...';

  @override
  String get analyzeAbg => 'Phân tích ABG';

  @override
  String get abgAnalysisResults => 'Kết quả phân tích';

  @override
  String get acidBaseStatus => 'Tình trạng Acid-Base';

  @override
  String get oxygenationStatus => 'Tình trạng Oxy hóa';

  @override
  String get calculatedIndices => 'Chỉ số tính toán';

  @override
  String get compensationAnalysis => 'Phân tích bù trừ';

  @override
  String expectedPco2(String value) {
    return 'PCO₂ dự kiến: $value ± 2 mmHg';
  }

  @override
  String actualPco2(String value) {
    return 'PCO₂ thực tế: $value mmHg';
  }

  @override
  String expectedHco3(String value) {
    return 'HCO₃⁻ dự kiến: $value mEq/L';
  }

  @override
  String actualHco3(String value) {
    return 'HCO₃⁻ thực tế: $value mEq/L';
  }

  @override
  String get abgNotes => 'Ghi chú';

  @override
  String get abgReferences => 'Tài liệu tham khảo';

  @override
  String get abgInterpretationNormal => 'Bình thường';

  @override
  String get abgInterpretationRespAcidosis => 'Toan hô hấp cấp';

  @override
  String get abgInterpretationRespAlkalosis => 'Kiềm hô hấp cấp';

  @override
  String get abgInterpretationMetAcidosis => 'Toan chuyển hóa cấp';

  @override
  String get abgInterpretationMetAlkalosis => 'Kiềm chuyển hóa cấp';

  @override
  String get abgInterpretationCompRespAcidosis => 'Toan hô hấp có bù trừ';

  @override
  String get abgInterpretationCompRespAlkalosis => 'Kiềm hô hấp có bù trừ';

  @override
  String get abgInterpretationCompMetAcidosis => 'Toan chuyển hóa có bù trừ';

  @override
  String get abgInterpretationCompMetAlkalosis => 'Kiềm chuyển hóa có bù trừ';

  @override
  String get abgInterpretationMixed => 'Rối loạn hỗn hợp';

  @override
  String get oxygenationNormal => 'Oxy hóa bình thường';

  @override
  String get oxygenationMildHypoxemia => 'Thiếu oxy nhẹ';

  @override
  String get oxygenationModerateHypoxemia => 'Thiếu oxy vừa';

  @override
  String get oxygenationSevereHypoxemia => 'Thiếu oxy nặng';

  @override
  String get oxygenationNormalWithO2 => 'Oxy hóa tốt với O2 bổ sung';

  @override
  String get labAnalysisHomeTitle => 'Phân tích cận lâm sàng';

  @override
  String get selectAnalysisType => 'Chọn loại phân tích';

  @override
  String get labAnalysisToolDescription =>
      'Công cụ hỗ trợ phân tích và diễn giải kết quả xét nghiệm';

  @override
  String get abgAnalysisCardTitle => 'Khí máu động mạch';

  @override
  String get abgAnalysisCardSubtitle =>
      'ABG Analysis - Phân tích khí máu động mạch, pH, CO2, O2';

  @override
  String get pleuralFluidCardTitle => 'Dịch màng phổi';

  @override
  String get pleuralFluidCardSubtitle =>
      'Pleural Fluid - Phân tích dịch màng phổi, Light\'s criteria';

  @override
  String get asciticFluidCardTitle => 'Dịch màng bụng';

  @override
  String get asciticFluidCardSubtitle =>
      'Ascitic Fluid - Phân tích dịch cổ trướng, SAAG gradient';

  @override
  String get csfAnalysisCardTitle => 'Dịch não tủy';

  @override
  String get csfAnalysisCardSubtitle =>
      'CSF Analysis - Phân tích dịch não tủy, viêm màng não';

  @override
  String get urinalysisCardTitle => 'Phân tích nước tiểu';

  @override
  String get urinalysisCardSubtitle =>
      'Urinalysis - Phân tích nước tiểu, protein, hồng cầu';

  @override
  String get pleuralFluidAnalysisTitle => 'Phân tích dịch màng phổi';

  @override
  String get pleuralFluidParameters => 'Thông số dịch màng phổi';

  @override
  String get requiredForLight => '* Bắt buộc cho tiêu chuẩn Light';

  @override
  String get fluidAppearance => 'Tính chất dịch';

  @override
  String get appearanceClear => 'Trong suốt';

  @override
  String get appearanceTurbid => 'Đục';

  @override
  String get appearanceBloody => 'Có máu';

  @override
  String get appearancePurulent => 'Mủ';

  @override
  String get appearanceMilky => 'Trắng đục';

  @override
  String get appearanceCholesterol => 'Vàng cholesterol';

  @override
  String get proteinLabel => 'Protein (g/dL) *';

  @override
  String get ldhLabel => 'LDH (U/L) *';

  @override
  String get glucoseLabel => 'Glucose (mg/dL)';

  @override
  String get cellCountLabel => 'Số lượng tế bào (/μL)';

  @override
  String get neutrophilsLabel => 'Bạch cầu trung tính (%)';

  @override
  String get lymphocytesLabel => 'Bạch cầu lympho (%)';

  @override
  String get cholesterolLabel => 'Cholesterol (mg/dL)';

  @override
  String get triglyceridesLabel => 'Triglyceride (mg/dL)';

  @override
  String get serumParameters => 'Thông số huyết thanh';

  @override
  String get serumProteinLabel => 'Protein huyết thanh (g/dL) *';

  @override
  String get serumLdhLabel => 'LDH huyết thanh (U/L) *';

  @override
  String get serumGlucoseLabel => 'Glucose huyết thanh (mg/dL)';

  @override
  String get analyzePleuralFluid => 'Phân tích dịch màng phổi';

  @override
  String get fluidTypeTransudate => 'Thẩm xuất';

  @override
  String get fluidTypeExudate => 'Xuất tiết';

  @override
  String get fluidTypeIndeterminate => 'Không xác định';

  @override
  String get causeHeartFailure => 'Suy tim';

  @override
  String get causeCirrhosis => 'Xơ gan';

  @override
  String get causeNephrotic => 'Hội chứng thận hư';

  @override
  String get causeHypoalbuminemia => 'Giảm albumin máu';

  @override
  String get causePneumonia => 'Viêm phổi';

  @override
  String get causeMalignancy => 'Ung thư';

  @override
  String get causeTuberculosis => 'Lao';

  @override
  String get causePulmonaryEmbolism => 'Thuyên tắc phổi';

  @override
  String get causePancreatitis => 'Viêm tụy';

  @override
  String get causeRheumatoid => 'Viêm khớp dạng thấp';

  @override
  String get causeLupus => 'Lupus ban đỏ hệ thống';

  @override
  String get causeEmpyema => 'Mủ màng phổi';

  @override
  String get causeUnknown => 'Nguyên nhân không rõ';

  @override
  String get pleaseEnterValue => 'Vui lòng nhập giá trị';

  @override
  String get invalidValue => 'Giá trị không hợp lệ';

  @override
  String get invalidPercentage => 'Phải nằm trong khoảng 0-100';

  @override
  String get fluidCharacteristics => 'Đặc điểm dịch';

  @override
  String get lightCriteria => 'Tiêu chuẩn Light';

  @override
  String get proteinRatio => 'Tỉ lệ Protein';

  @override
  String get ldhRatio => 'Tỉ lệ LDH';

  @override
  String get likelyCauses => 'Nguyên nhân có thể';

  @override
  String get notes => 'Ghi chú';

  @override
  String get notesOptional => 'Ghi chú (tuỳ chọn)';

  @override
  String get additionalInformation => 'Thông tin bổ sung...';

  @override
  String get guidelines => 'Hướng dẫn';

  @override
  String get guidelinesDescription => 'Hướng dẫn thực hành lâm sàng';

  @override
  String get entertainment => 'Giải trí';

  @override
  String get entertainmentDescription => 'Câu đố và trò chơi y khoa';

  @override
  String get bookmarks => 'Đánh dấu';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get notifications => 'Thông báo';

  @override
  String get settings => 'Cài đặt';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languageSelection => 'Chọn ngôn ngữ';

  @override
  String get english => 'English';

  @override
  String get vietnamese => 'Tiếng Việt';

  @override
  String get cancel => 'Hủy';

  @override
  String get save => 'Lưu';

  @override
  String get clear => 'Xóa';

  @override
  String get calculate => 'Tính toán';

  @override
  String get result => 'Kết quả';

  @override
  String get score => 'Điểm';

  @override
  String get normal => 'Bình thường';

  @override
  String get mild => 'Nhẹ';

  @override
  String get moderate => 'Vừa';

  @override
  String get severe => 'Nặng';

  @override
  String get critical => 'Nguy kịch';

  @override
  String get glasgowComaScale => 'Thang điểm Glasgow';

  @override
  String get glasgowComaScaleDescription => 'Đánh giá mức độ ý thức bệnh nhân';

  @override
  String get eyeResponse => 'Phản ứng mắt';

  @override
  String get verbalResponse => 'Phản ứng lời nói';

  @override
  String get motorResponse => 'Phản ứng vận động';

  @override
  String get total => 'Tổng';

  @override
  String get home => 'Trang chủ';

  @override
  String get other => 'Khác';

  @override
  String get refresh => 'Làm mới';

  @override
  String get clearAll => 'Xóa tất cả';

  @override
  String get back => 'Quay lại';

  @override
  String get apache2Score => 'Thang điểm APACHE II';

  @override
  String get apache2Description =>
      'Đánh giá sinh lý cấp tính và sức khỏe mãn tính';

  @override
  String get sofaScore => 'Thang điểm SOFA';

  @override
  String get sofaDescription => 'Đánh giá suy cơ quan tuần tự';

  @override
  String get sapsScore => 'Thang điểm SAPS II';

  @override
  String get sapsDescription => 'Thang điểm sinh lý cấp tính đơn giản';

  @override
  String get bradenScale => 'Thang Braden';

  @override
  String get bradenDescription => 'Đánh giá nguy cơ loét do tỳ đè';

  @override
  String get nihssScore => 'Thang NIHSS';

  @override
  String get nihssDescription => 'Thang đánh giá đột quỵ quốc gia Mỹ';

  @override
  String get rassScore => 'Thang RASS';

  @override
  String get rassDescription => 'Thang đánh giá kích động - an thần Richmond';

  @override
  String get camIcuScore => 'CAM-ICU';

  @override
  String get camIcuDescription => 'Phương pháp đánh giá lú lẫn trong ICU';

  @override
  String get respiratorySystem => 'Hệ hô hấp';

  @override
  String get cardiovascularSystem => 'Hệ tim mạch';

  @override
  String get nervousSystem => 'Hệ thần kinh';

  @override
  String get renalSystem => 'Hệ thận';

  @override
  String get hepaticSystem => 'Hệ gan';

  @override
  String get coagulationSystem => 'Hệ đông máu';

  @override
  String get bloodPressure => 'Huyết áp';

  @override
  String get heartRate => 'Nhịp tim';

  @override
  String get temperature => 'Nhiệt độ';

  @override
  String get respiratoryRate => 'Nhịp thở';

  @override
  String get oxygenSaturation => 'Độ bão hòa oxy';

  @override
  String get labResults => 'Kết quả xét nghiệm';

  @override
  String get bloodGas => 'Khí máu';

  @override
  String get completeBloodCount => 'Công thức máu';

  @override
  String get liverFunction => 'Chức năng gan';

  @override
  String get kidneyFunction => 'Chức năng thận';

  @override
  String get electrolytes => 'Điện giải';

  @override
  String get intensive_care => 'Hồi sức tích cực';

  @override
  String get emergency_medicine => 'Y học cấp cứu';

  @override
  String get hypertensive_crisis_title => 'Cơn Tăng Huyết Áp';

  @override
  String get hypertensive_crisis_description =>
      'Xử lý cấp cứu THA ≥180/120 mmHg';

  @override
  String get hypoglycemia_crisis_title => 'Cơn Hạ Đường Huyết';

  @override
  String get hypoglycemia_crisis_description =>
      'Xử lý cấp cứu glucose <70mg/dL';

  @override
  String get hyperglycemic_hhs_title =>
      'Cơn Tăng Đường Huyết Tăng Áp Lực Thẩm Thấu';

  @override
  String get hyperglycemic_hhs_description =>
      'Xử lý cấp cứu HHS - cấp cứu nội tiết';

  @override
  String get cardiogenic_shock_title => 'Sốc Tim';

  @override
  String get cardiogenic_shock_description => 'Xử lý sốc do tim';

  @override
  String get acute_poisoning_title => 'Ngộ Độc Cấp';

  @override
  String get acute_poisoning_description => 'Xử lý ngộ độc cấp tính';

  @override
  String get anaphylactic_shock_title => 'Sốc Phản Vệ';

  @override
  String get anaphylactic_shock_description => 'Xử lý sốc phản vệ';

  @override
  String get anaphylactic_shock_subtitle =>
      'Xử lý cấp cứu phản ứng dị ứng nặng';

  @override
  String get immediate_actions => 'HÀNH ĐỘNG NGAY LẬP TỨC';

  @override
  String get stop_allergen_exposure => 'Ngừng tiếp xúc với tác nhân gây dị ứng';

  @override
  String get stop_allergen_subtitle =>
      'Loại bỏ thuốc, thực phẩm, hoặc chất gây dị ứng';

  @override
  String get inject_epinephrine => 'Tiêm Epinephrine ngay';

  @override
  String get epinephrine_dose => 'IM 0.3-0.5mg (1:1000) vào cơ đùi ngoài';

  @override
  String get call_support => 'Gọi hỗ trợ';

  @override
  String get call_support_subtitle => 'Gọi bác sĩ cấp cứu và team hồi sức';

  @override
  String get abc_support => 'ABC - đường thở, thở, tuần hoàn';

  @override
  String get abc_support_subtitle => 'Oxy, truyền dịch, theo dõi vital signs';

  @override
  String get recognize_anaphylaxis => 'Nhận biết sốc phản vệ';

  @override
  String get main_symptoms => 'Triệu chứng chính';

  @override
  String get danger_signs => 'Dấu hiệu nguy hiểm';

  @override
  String get initial_treatment => 'Xử trí ban đầu';

  @override
  String get epinephrine_priority => 'Epinephrine (Ưu tiên số 1)';

  @override
  String get respiratory_support => 'Hỗ trợ hô hấp';

  @override
  String get circulatory_support => 'Hỗ trợ tuần hoàn';

  @override
  String get adjuvant_medications => 'Thuốc bổ trợ';

  @override
  String get monitoring_care => 'Theo dõi và chăm sóc';

  @override
  String get special_situations => 'Tình huống đặc biệt';

  @override
  String get prevention_recurrence => 'Phòng ngừa tái phát';

  @override
  String get treatment_algorithm => 'Sơ đồ thuật toán';

  @override
  String get anaphylaxis_symptoms =>
      '• Da: Mày đay, ngứa, đỏ da, phù mặt/môi/lưỡi\n• Hô hấp: Khò khè, khó thở, phù thanh quản\n• Tim mạch: Hạ huyết áp, nhịp tim nhanh, choáng\n• Tiêu hóa: Nôn mửa, tiêu chảy, đau bụng\n• Thần kinh: Lo âu, bồn chồn, mất ý thức';

  @override
  String get anaphylaxis_danger_signs =>
      '• Khó thở nặng, thở khò khè\n• Huyết áp tâm thu <90 mmHg\n• Phù thanh quản, khàn tiếng\n• Mất ý thức, co giật\n• Cyan tím, SpO2 <90%';

  @override
  String get epinephrine_protocol =>
      '• Epinephrine 1:1000 (1mg/mL)\n• Liều: 0.3-0.5mg IM (0.3-0.5mL)\n• Vị trí: Cơ đùi ngoài (vastus lateralis)\n• Có thể lặp lại sau 5-15 phút nếu cần\n• Nếu không đáp ứng: Epinephrine IV';

  @override
  String get respiratory_protocol =>
      '• Oxy high-flow qua mask (15L/phút)\n• Đặt bệnh nhân tư thế nửa ngồi\n• Chuẩn bị intubation nếu phù thanh quản\n• Bronchodilator: Salbutamol nebulizer';

  @override
  String get circulatory_protocol =>
      '• IV access lớn (16-18G) x2\n• Normal saline 1-2L nhanh\n• Monitor: EKG, BP, SpO2\n• Nếu hypotension: Dopamine/Norepinephrine';

  @override
  String get h1_antihistamine => 'H1 Antihistamine';

  @override
  String get h1_antihistamine_dose =>
      'Diphenhydramine 25-50mg IV hoặc\nChlorpheniramine 10mg IV';

  @override
  String get h2_antihistamine => 'H2 Antihistamine';

  @override
  String get h2_antihistamine_dose =>
      'Ranitidine 50mg IV hoặc\nFamotidine 20mg IV';

  @override
  String get corticosteroid => 'Corticosteroid';

  @override
  String get corticosteroid_dose =>
      'Hydrocortisone 200mg IV hoặc\nMethylprednisolone 125mg IV';

  @override
  String get bronchodilator => 'Bronchodilator';

  @override
  String get bronchodilator_dose =>
      'Salbutamol 2.5-5mg nebulizer\nCó thể lặp lại mỗi 20 phút';

  @override
  String get anaphylaxis_monitoring => '📊 Monitoring';

  @override
  String get monitoring_content =>
      '• Vital signs mỗi 5-15 phút\n• SpO2 liên tục\n• EKG monitor\n• Nước tiểu (target >0.5mL/kg/h)\n• Mức độ ý thức';

  @override
  String get observation_time => 'Thời gian quan sát';

  @override
  String get observation_content =>
      '• Phản ứng nhẹ: 4-6 giờ\n• Phản ứng nặng: 12-24 giờ\n• Lưu ý biphasic reaction (4-12h sau)\n• Discharge khi ổn định >2h';

  @override
  String get refractory_anaphylaxis => 'Sốc phản vệ kháng trị';

  @override
  String get refractory_content =>
      '• Epinephrine IV liên tục 0.05-0.1 mcg/kg/phút\n• Glucagon 1-5mg IV (nếu dùng beta-blocker)\n• Vasopressin 40 units IV\n• Cân nhắc ECMO nếu cardiac arrest';

  @override
  String get beta_blocker_case => 'Bệnh nhân dùng beta-blocker';

  @override
  String get beta_blocker_content =>
      '• Có thể kháng epinephrine\n• Glucagon 1-5mg IV bolus\n• Theo sau bởi infusion 5-15 mcg/phút\n• Atropine nếu bradycardia';

  @override
  String get pregnancy_case => 'Phụ nữ có thai';

  @override
  String get pregnancy_content =>
      '• Epinephrine vẫn là thuốc đầu tay\n• Tư thế nghiêng trái để tránh compression\n• Monitor thai nhi nếu >20 tuần\n• Chuẩn bị cesarean section khẩn cấp';

  @override
  String get discharge_medications => 'Kê đơn ra viện';

  @override
  String get discharge_meds_content =>
      '• EpiPen auto-injector và hướng dẫn sử dụng\n• Antihistamine: Cetirizine 10mg/ngày\n• Prednisolone 1mg/kg/ngày x 3-5 ngày\n• Bronchodilator nếu có asthma';

  @override
  String get patient_education => 'Giáo dục bệnh nhân';

  @override
  String get education_content =>
      '• Xác định và tránh tác nhân gây dị ứng\n• Luôn mang theo EpiPen\n• Cách sử dụng EpiPen đúng cách\n• Khi nào cần đến cấp cứu ngay\n• Đeo vòng/thẻ cảnh báo dị ứng';

  @override
  String get followup => 'Follow-up';

  @override
  String get followup_content =>
      '• Khám lại sau 1-2 tuần\n• Tham khảo ý kiến bác sĩ dị ứng\n• Cân nhắc allergy testing\n• Desensitization nếu cần thiết';

  @override
  String get algorithm_suspect => 'Nghi ngờ sốc phản vệ';

  @override
  String get algorithm_epinephrine => 'Epinephrine IM ngay lập tức';

  @override
  String get algorithm_abc => 'ABC + Oxy + IV access';

  @override
  String get algorithm_response => 'Đáp ứng tốt?';

  @override
  String get algorithm_yes => 'Có';

  @override
  String get algorithm_no => 'Không';

  @override
  String get algorithm_supportive => 'Thuốc bổ trợ + Theo dõi';

  @override
  String get algorithm_repeat => 'Epinephrine lặp lại\nCân nhắc IV infusion';

  @override
  String get myocardial_infarction_title => 'Nhồi Máu Cơ Tim';

  @override
  String get myocardial_infarction_description => 'Xử lý NMCT cấp';

  @override
  String get critical_care => 'Chăm sóc đặc biệt';

  @override
  String get patient_monitoring => 'Theo dõi bệnh nhân';

  @override
  String get medical_calculation => 'Tính toán y khoa';

  @override
  String get references => 'Tài liệu tham khảo';

  @override
  String get asciticFluidAnalysisTitle => 'Phân tích dịch màng bụng';

  @override
  String get asciticFluidParameters => 'Thông số dịch màng bụng';

  @override
  String get requiredForSAAG => '* Bắt buộc cho tính toán SAAG';

  @override
  String get albuminLabel => 'Albumin (g/dL) *';

  @override
  String get amylaseLabel => 'Amylase (U/L)';

  @override
  String get redBloodCellsLabel => 'Hồng cầu (/μL)';

  @override
  String get serumAlbuminLabel => 'Albumin huyết thanh (g/dL) *';

  @override
  String get analyzeAsciticFluid => 'Phân tích dịch màng bụng';

  @override
  String get fluidTypeTransudateSAAG => 'Thẩm xuất (SAAG cao)';

  @override
  String get fluidTypeExudateSAAG => 'Xuất tiết (SAAG thấp)';

  @override
  String get saagLabel => 'SAAG';

  @override
  String get albuminRatio => 'Tỉ lệ Albumin';

  @override
  String get causePeritonitis => 'Viêm phúc mạc';

  @override
  String get causeNephrogenicAscites => 'Cổ trướng do thận';

  @override
  String get causeSpontaneousBacterialPeritonitis =>
      'Viêm phúc mạc do vi khuẩn tự phát';

  @override
  String get causeSecondaryBacterialPeritonitis =>
      'Viêm phúc mạc do vi khuẩn thứ phát';

  @override
  String get causeChylousAscites => 'Cổ trướng chylomicron';

  @override
  String get causeHemorrhagicAscites => 'Cổ trướng xuất huyết';

  @override
  String get specialTests => 'Xét nghiệm đặc biệt';

  @override
  String get positive => 'Dương tính';

  @override
  String get negative => 'Âm tính';

  @override
  String get medical_disclaimer =>
      'DÀNH CHO NHÂN VIÊN Y TẾ\nCông cụ tham khảo - Không thay thế phán đoán lâm sàng';

  @override
  String get medical_references_title =>
      'Tài Liệu Tham Khảo & Trích Dẫn Y Khoa';

  @override
  String get medical_disclaimer_title => 'Tuyên Bố Y Khoa';

  @override
  String get medical_disclaimer_content =>
      'Dr Bèo được thiết kế chỉ nhằm mục đích giáo dục và tham khảo cho các nhân viên y tế có chuyên môn. Ứng dụng này KHÔNG nên thay thế phán đoán lâm sàng, quy trình của cơ sở y tế, hoặc đào tạo y khoa chuyên nghiệp. Tất cả thông tin y khoa đều dựa trên các hướng dẫn lâm sàng và tài liệu đã được thiết lập như được trích dẫn bên dưới.';

  @override
  String get medical_literature => 'Tài liệu y khoa';

  @override
  String get evidence_based => 'Dựa trên bằng chứng';

  @override
  String get clinical_guidelines => 'Hướng dẫn lâm sàng';

  @override
  String get gcs_eye_spontaneous => 'Mở mắt tự phát';

  @override
  String get gcs_eye_to_voice => 'Mở mắt khi gọi';

  @override
  String get gcs_eye_to_pain => 'Mở mắt khi đau';

  @override
  String get gcs_eye_none => 'Không mở mắt';

  @override
  String get gcs_verbal_oriented => 'Nói chuyện bình thường';

  @override
  String get gcs_verbal_confused => 'Nói lẫn, nhầm lẫn';

  @override
  String get gcs_verbal_inappropriate => 'Nói từng từ không liên quan';

  @override
  String get gcs_verbal_incomprehensible => 'Chỉ phát ra âm thanh';

  @override
  String get gcs_verbal_none => 'Không phản ứng';

  @override
  String get gcs_motor_obeys => 'Làm theo lệnh';

  @override
  String get gcs_motor_localizes => 'Định vị đau';

  @override
  String get gcs_motor_withdrawal => 'Rút tay khi đau';

  @override
  String get gcs_motor_flexion => 'Tư thế gấp bất thường';

  @override
  String get gcs_motor_extension => 'Tư thế duỗi bất thường';

  @override
  String get gcs_motor_none => 'Không phản ứng';

  @override
  String get mild_brain_injury => 'Chấn thương não nhẹ';

  @override
  String get moderate_brain_injury => 'Chấn thương não trung bình';

  @override
  String get severe_brain_injury => 'Chấn thương não nặng';

  @override
  String get please_select_responses => 'Vui lòng chọn các phản ứng';

  @override
  String get reset => 'Đặt lại';

  @override
  String get total_gcs_score => 'Tổng điểm GCS';

  @override
  String get systolic_pressure => 'Huyết áp tâm thu';

  @override
  String get diastolic_pressure => 'Huyết áp tâm trương';

  @override
  String get mean_arterial_pressure => 'Huyết áp trung bình';

  @override
  String get age => 'Tuổi';

  @override
  String get weight => 'Cân nặng';

  @override
  String get height => 'Chiều cao';

  @override
  String get bmi => 'Chỉ số khối cơ thể (BMI)';

  @override
  String get bsa => 'Diện tích bề mặt cơ thể (BSA)';

  @override
  String get please_enter_parameters => 'Vui lòng nhập các thông số';

  @override
  String get very_low_mortality_risk => 'Nguy cơ tử vong rất thấp';

  @override
  String get low_mortality_risk => 'Nguy cơ tử vong thấp';

  @override
  String get moderate_mortality_risk => 'Nguy cơ tử vong trung bình';

  @override
  String get high_mortality_risk => 'Nguy cơ tử vong cao';

  @override
  String get very_high_mortality_risk => 'Nguy cơ tử vong rất cao';

  @override
  String get extremely_high_mortality_risk => 'Nguy cơ tử vong cực kỳ cao';

  @override
  String get predicted_mortality_rate => 'Tỷ lệ tử vong dự đoán';

  @override
  String get vital_signs => 'Sinh hiệu';

  @override
  String get laboratory_tests => 'Xét nghiệm';

  @override
  String get chronic_health => 'Sức khỏe mãn tính';

  @override
  String get age_years => 'Tuổi (năm)';

  @override
  String get years => 'năm';

  @override
  String get age_score => 'Điểm tuổi';

  @override
  String get temperature_celsius => 'Nhiệt độ (°C)';

  @override
  String get map_mmhg => 'MAP (mmHg)';

  @override
  String get heart_rate_per_min => 'Nhịp tim (/phút)';

  @override
  String get respiratory_rate_per_min => 'Nhịp thở (/phút)';

  @override
  String get blood_ph => 'pH máu';

  @override
  String get sodium_meq_l => 'Natri (mEq/L)';

  @override
  String get potassium_meq_l => 'Kali (mEq/L)';

  @override
  String get creatinine_mg_dl => 'Creatinin (mg/dL)';

  @override
  String get hematocrit_percent => 'Hematocrit (%)';

  @override
  String get wbc_count => 'Số lượng BC (1000/µL)';

  @override
  String get chronic_disease_history => 'Tiền sử bệnh mạn tính nghiêm trọng:';

  @override
  String get none => 'Không có';

  @override
  String get has_non_surgical_or_emergency =>
      'Có (không phẫu thuật hoặc phẫu thuật cấp cứu)';

  @override
  String get has_elective_surgery => 'Có (phẫu thuật chương trình)';

  @override
  String get no_organ_failure => 'Không có suy cơ quan';

  @override
  String get mild_organ_failure => 'Suy cơ quan nhẹ';

  @override
  String get moderate_organ_failure => 'Suy cơ quan trung bình';

  @override
  String get severe_organ_failure => 'Suy cơ quan nặng';

  @override
  String get very_severe_multi_organ_failure => 'Suy đa cơ quan rất nặng';

  @override
  String get respiratory_system => 'Hệ hô hấp';

  @override
  String get cardiovascular_system => 'Hệ tim mạch';

  @override
  String get hepatic_system => 'Hệ gan';

  @override
  String get coagulation_system => 'Hệ đông máu';

  @override
  String get renal_system => 'Hệ thận';

  @override
  String get neurological_system => 'Hệ thần kinh';

  @override
  String get mortality_rate => 'Tỷ lệ tử vong';

  @override
  String get pao2_fio2_mmhg => 'PaO2/FiO2 (mmHg)';

  @override
  String get if_not_ventilated_helper =>
      'Nếu không thở máy, nhập SpO2/FiO2 x 315';

  @override
  String get mean_arterial_pressure_or_vasopressors =>
      'Huyết áp trung bình hoặc thuốc vận mạch';

  @override
  String get no_hypotension => 'Không hạ huyết áp';

  @override
  String get map_less_than_70 => 'MAP < 70 mmHg';

  @override
  String get dopamine_dobutamine =>
      'Dopamine ≤ 5 hoặc dobutamine (liều bất kỳ)';

  @override
  String get dopamine_5_15 =>
      'Dopamine 5-15 hoặc epinephrine ≤ 0.1 hoặc norepinephrine ≤ 0.1';

  @override
  String get dopamine_greater_15 =>
      'Dopamine > 15 hoặc epinephrine > 0.1 hoặc norepinephrine > 0.1';

  @override
  String get bilirubin_mg_dl => 'Bilirubin (mg/dL)';

  @override
  String get platelets_1000_ul => 'Tiểu cầu (1000/µL)';

  @override
  String get glasgow_coma_scale_score => 'Điểm Glasgow Coma Scale';

  @override
  String get creatinine_or_urine_output => 'Creatinin hoặc lượng nước tiểu';

  @override
  String get creatinine_mg_dl_label => 'Creatinin (mg/dL)';

  @override
  String get urine_output_ml_day => 'Lượng nước tiểu (ml/ngày)';

  @override
  String get enter_total_bilirubin_value => 'Nhập giá trị bilirubin toàn phần';

  @override
  String get enter_platelet_count => 'Nhập số lượng tiểu cầu';

  @override
  String get enter_creatinine_value => 'Nhập giá trị creatinin';

  @override
  String get enter_urine_output_24h => 'Nhập lượng nước tiểu 24 giờ';

  @override
  String get creatinine_unit => 'Đơn vị Creatinine';

  @override
  String get conversion_note => 'Chuyển đổi: 1 mg/dL = 88.4 umol/L';

  @override
  String get score_colon => 'Điểm: ';

  @override
  String get bilirubin_unit_label => 'Đơn vị Bilirubin';

  @override
  String get bilirubin_conversion_note => 'Chuyển đổi: 1 mg/dL = 17.1 umol/L';

  @override
  String get saps2Score => 'SAPS II Score';

  @override
  String get physiological_score => 'Điểm sinh lý';

  @override
  String get admission_type => 'Loại nhập viện';

  @override
  String get chronic_diseases => 'Bệnh mãn tính';

  @override
  String get scheduled_surgery => 'Phẫu thuật theo kế hoạch';

  @override
  String get unscheduled_surgery => 'Phẫu thuật cấp cứu';

  @override
  String get medical_admission => 'Nhập viện nội khoa';

  @override
  String get saps2_mortality_note =>
      'Dự đoán tử vong SAPS II dựa trên 24 giờ đầu nhập ICU';

  @override
  String get basic_information => 'Thông tin cơ bản';

  @override
  String get heart_rate_bpm => 'Nhịp tim (/phút)';

  @override
  String get systolic_bp_mmhg => 'Huyết áp tâm thu (mmHg)';

  @override
  String get urine_output_l_day => 'Nước tiểu (L/ngày)';

  @override
  String get nihss_score => 'Thang NIHSS';

  @override
  String get nihss_mild_stroke => 'Đột quỵ nhẹ';

  @override
  String get nihss_moderate_stroke => 'Đột quỵ vừa';

  @override
  String get nihss_severe_stroke => 'Đột quỵ nặng';

  @override
  String get nihss_very_severe_stroke => 'Đột quỵ rất nặng';

  @override
  String get nihss_good_prognosis => 'Tiên lượng tốt, hồi phục cao';

  @override
  String get nihss_fair_prognosis => 'Tiên lượng khá, cần phục hồi chức năng';

  @override
  String get nihss_poor_prognosis => 'Tiên lượng xấu, phụ thuộc nặng';

  @override
  String get nihss_very_poor_prognosis => 'Tiên lượng rất xấu, tử vong cao';

  @override
  String get prognosis => 'Tiên lượng:';

  @override
  String get potassium_mmol => 'Kali (mmol/L)';

  @override
  String get sodium_mmol => 'Natri (mmol/L)';

  @override
  String get bicarbonate_mmol => 'HCO3⁻ (mmol/L)';

  @override
  String get glasgow_coma_scale => 'Thang Glasgow Coma Scale';

  @override
  String get admission_chronic_disease => 'Loại nhập viện & Bệnh mạn tính';

  @override
  String get gcs_less_than_6 => 'GCS < 6';

  @override
  String get gcs_6_to_8 => 'GCS 6-8';

  @override
  String get gcs_9_to_10 => 'GCS 9-10';

  @override
  String get gcs_11_to_13 => 'GCS 11-13';

  @override
  String get gcs_14_to_15 => 'GCS 14-15';

  @override
  String get admission_type_label => 'Loại nhập viện:';

  @override
  String get chronic_diseases_label => 'Bệnh mạn tính:';

  @override
  String get qsofa_score => 'Thang qSOFA';

  @override
  String get qsofa_description => 'Quick SOFA cho tầm soát nhiễm khuẩn huyết';

  @override
  String get routine_monitoring =>
      'Theo dõi thường quy, không cần can thiệp đặc biệt';

  @override
  String get sepsis_evaluation =>
      'Xem xét đánh giá nhiễm khuẩn huyết và xử trí ngay lập tức';

  @override
  String get low_risk => 'Nguy cơ thấp';

  @override
  String get high_risk => 'Nguy cơ cao';

  @override
  String get mortality_low => '< 10%';

  @override
  String get mortality_high => '≥ 10%';

  @override
  String get mortality => 'Tử vong';

  @override
  String get action => 'Hành động';

  @override
  String get recommendations => 'Khuyến nghị:';

  @override
  String get qsofa_criteria => 'Tiêu chí qSOFA';

  @override
  String get respiratory_rate => 'Nhịp thở';

  @override
  String get systolic_bp => 'Huyết áp tâm thu';

  @override
  String get altered_mentation => 'Trạng thái tâm thần';

  @override
  String get respiratory_rate_helper => '+1 điểm nếu ≥22 lần/phút';

  @override
  String get systolic_bp_helper => '+1 điểm nếu ≤100 mmHg';

  @override
  String get no => 'Không';

  @override
  String get yes_gcs_less_15 => 'Có (GCS <15)';

  @override
  String positive_criteria(int count) {
    return 'Tiêu chí dương tính ($count)';
  }

  @override
  String get continue_current_treatment =>
      'Tiếp tục theo dõi và điều trị hiện tại';

  @override
  String get initiate_sepsis_bundle =>
      'Khởi động quy trình sepsis bundle trong 1 giờ';

  @override
  String get nihss_1a_consciousness => '1a. Ý thức';

  @override
  String get nihss_1b_questions => '1b. Trả lời câu hỏi (tháng hiện tại, tuổi)';

  @override
  String get nihss_1c_commands =>
      '1c. Thực hiện lệnh (mở/nhắm mắt, nắm/mở bàn tay)';

  @override
  String get nihss_2_gaze => '2. Vận nhãn (nhìn theo ngón tay)';

  @override
  String get nihss_3_visual => '3. Trường nhìn';

  @override
  String get nihss_4_facial => '4. Liệt mặt';

  @override
  String get nihss_5a_left_arm => '5a. Vận động tay trái';

  @override
  String get nihss_5b_right_arm => '5b. Vận động tay phải';

  @override
  String get nihss_6a_left_leg => '6a. Vận động chân trái';

  @override
  String get nihss_6b_right_leg => '6b. Vận động chân phải';

  @override
  String get nihss_7_ataxia => '7. Mất điều hòa chi (finger-nose, heel-shin)';

  @override
  String get nihss_8_sensory => '8. Cảm giác';

  @override
  String get nihss_9_language => '9. Ngôn ngữ (thất ngôn)';

  @override
  String get nihss_10_dysarthria => '10. Khó nói (rối loạn phát âm)';

  @override
  String get nihss_11_extinction => '11. Loại trừ và thiếu chú ý';

  @override
  String get nihss_consciousness_0 => 'Tỉnh táo';

  @override
  String get nihss_consciousness_1 => 'Lơ mơ nhưng kích thích được';

  @override
  String get nihss_consciousness_2 => 'Hôn mê, cần kích thích liên tục';

  @override
  String get nihss_consciousness_3 => 'Hôn mê sâu';

  @override
  String get nihss_questions_0 => 'Trả lời đúng cả 2 câu';

  @override
  String get nihss_questions_1 => 'Trả lời đúng 1 câu';

  @override
  String get nihss_questions_2 => 'Không trả lời đúng câu nào';

  @override
  String get nihss_commands_0 => 'Thực hiện đúng cả 2 lệnh';

  @override
  String get nihss_commands_1 => 'Thực hiện đúng 1 lệnh';

  @override
  String get nihss_commands_2 => 'Không thực hiện đúng lệnh nào';

  @override
  String get nihss_gaze_0 => 'Bình thường';

  @override
  String get nihss_gaze_1 => 'Liệt nhìn một phần';

  @override
  String get nihss_gaze_2 => 'Liệt nhìn hoàn toàn';

  @override
  String get nihss_visual_0 => 'Không khiếm khuyết';

  @override
  String get nihss_visual_1 => 'Khiếm khuyết 1/4 trường nhìn';

  @override
  String get nihss_visual_2 => 'Khiếm khuyết nửa trường nhìn';

  @override
  String get nihss_visual_3 => 'Mù hoàn toàn';

  @override
  String get nihss_facial_0 => 'Bình thường';

  @override
  String get nihss_facial_1 => 'Liệt nhẹ (mất đối xứng nhẹ)';

  @override
  String get nihss_facial_2 => 'Liệt vừa (liệt vùng dưới mặt)';

  @override
  String get nihss_facial_3 => 'Liệt hoàn toàn';

  @override
  String get nihss_arm_0 => 'Bình thường, giữ 10 giây';

  @override
  String get nihss_arm_1 => 'Rơi từ từ trong 10 giây';

  @override
  String get nihss_arm_2 => 'Rơi ngay, có cố gắng chống lại trọng lực';

  @override
  String get nihss_arm_3 => 'Không chuyển động';

  @override
  String get nihss_arm_4 => 'Không đánh giá được (cắt cụt, khớp cứng)';

  @override
  String get nihss_leg_0 => 'Bình thường, giữ 5 giây';

  @override
  String get nihss_leg_1 => 'Rơi từ từ trong 5 giây';

  @override
  String get nihss_leg_2 => 'Rơi ngay, có cố gắng chống lại trọng lực';

  @override
  String get nihss_leg_3 => 'Không chuyển động';

  @override
  String get nihss_leg_4 => 'Không đánh giá được (cắt cụt, khớp cứng)';

  @override
  String get nihss_ataxia_0 => 'Không có';

  @override
  String get nihss_ataxia_1 => 'Có ở 1 chi';

  @override
  String get nihss_ataxia_2 => 'Có ở 2 chi';

  @override
  String get nihss_sensory_0 => 'Bình thường';

  @override
  String get nihss_sensory_1 => 'Giảm cảm giác nhẹ đến vừa';

  @override
  String get nihss_sensory_2 => 'Mất cảm giác hoàn toàn';

  @override
  String get nihss_language_0 => 'Bình thường';

  @override
  String get nihss_language_1 => 'Thất ngôn nhẹ đến vừa';

  @override
  String get nihss_language_2 => 'Thất ngôn nặng';

  @override
  String get nihss_language_3 => 'Câm hoàn toàn';

  @override
  String get nihss_dysarthria_0 => 'Bình thường';

  @override
  String get nihss_dysarthria_1 => 'Nhẹ đến vừa';

  @override
  String get nihss_dysarthria_2 => 'Nặng (câm hoặc không thể hiểu)';

  @override
  String get nihss_extinction_0 => 'Bình thường';

  @override
  String get nihss_extinction_1 => 'Thiếu chú ý hoặc loại trừ một phương thức';

  @override
  String get nihss_extinction_2 => 'Thiếu chú ý hoàn toàn ở một bên';

  @override
  String get nihss_recommendation_mild =>
      'Điều trị nội khoa, phục hồi chức năng sớm';

  @override
  String get nihss_recommendation_moderate =>
      'Cân nhắc can thiệp mạch máu, phục hồi chức năng tích cực';

  @override
  String get nihss_recommendation_severe =>
      'Can thiệp tích cực nếu trong golden time, ICU monitoring';

  @override
  String get nihss_recommendation_very_severe =>
      'Điều trị hỗ trợ, cân nhắc giới hạn điều trị';

  @override
  String get nihss_score_display => 'Điểm NIHSS';

  @override
  String get nihss_severity_classification => 'Phân tầng mức độ đột quỵ';

  @override
  String get nihss_score_range_mild => '0-4 điểm';

  @override
  String get nihss_score_range_moderate => '5-15 điểm';

  @override
  String get nihss_score_range_severe => '16-20 điểm';

  @override
  String get nihss_score_range_very_severe => '21-42 điểm';

  @override
  String get nihss_clinical_note =>
      'Lưu ý: NIHSS được đánh giá trong 24h đầu và theo dõi diễn biến. Điểm số giảm cho thấy cải thiện, tăng cho thấy xấu đi. Cần kết hợp với đánh giá lâm sàng và hình ảnh học để quyết định điều trị.';

  @override
  String get reference_materials => 'Tài liệu tham khảo';

  @override
  String get score_label => 'Điểm';

  @override
  String get sepsis_risk_stratification => 'Phân tầng nguy cơ sepsis';

  @override
  String get clinical_information => 'Thông tin lâm sàng';

  @override
  String get qsofa_clinical_content =>
      'qSOFA (Quick SOFA) là công cụ sàng lọc sepsis đơn giản và nhanh chóng\n\nƯu điểm:\n• Đơn giản, không cần xét nghiệm\n• Thực hiện nhanh tại bedside\n• Giúp nhận diện sớm sepsis\n• Kích hoạt quy trình điều trị\n\nGiới hạn:\n• Độ nhạy thấp hơn SOFA đầy đủ\n• Không thay thế đánh giá lâm sàng\n• Có thể bỏ sót sepsis sớm\n• Cần kết hợp với nghi ngờ nhiễm trùng\n\nSepsis 3.0 Definition:\n• Sepsis = Nhiễm trùng + qSOFA ≥2\n• Sốc sepsis = Sepsis + vasopressor + lactate >2\n• Điều trị trong \"Golden Hour\"\n\nLưu ý quan trọng:\n• qSOFA không chẩn đoán sepsis\n• Chỉ là công cụ sàng lọc\n• Cần đánh giá tổng thể lâm sàng\n• Theo dõi diễn biến liên tục';

  @override
  String get qsofa_respiratory_rate_criterion => 'Tần số thở ≥22';

  @override
  String get qsofa_respiratory_rate_description => 'Tần số thở ≥22 lần/phút';

  @override
  String get qsofa_altered_mentation_criterion => 'Rối loạn ý thức';

  @override
  String get qsofa_altered_mentation_description =>
      'Thay đổi tình trạng tâm thần (GCS <15)';

  @override
  String get qsofa_systolic_bp_criterion => 'Huyết áp tâm thu ≤100';

  @override
  String get qsofa_systolic_bp_description => 'Huyết áp tâm thu ≤100 mmHg';

  @override
  String get qsofa_low_risk => 'Nguy cơ thấp';

  @override
  String get qsofa_high_risk => 'Nguy cơ cao';

  @override
  String get qsofa_routine_monitoring => 'Theo dõi thường quy';

  @override
  String get qsofa_immediate_sepsis_bundle => 'Sepsis bundle tức thì';

  @override
  String get sepsis_bundle_hour_1 => 'Sepsis Bundle - Hour 1';

  @override
  String get lactate_measurement => '1. Lactate đo lường';

  @override
  String get lactate_description => 'Lấy máu xét nghiệm lactate';

  @override
  String get blood_culture => '2. Cấy máu';

  @override
  String get blood_culture_description => 'Cấy máu trước khi dùng kháng sinh';

  @override
  String get antibiotics => '3. Kháng sinh';

  @override
  String get antibiotics_description => 'Kháng sinh phổ rộng trong 1 giờ';

  @override
  String get fluid_resuscitation => '4. Dịch truyền';

  @override
  String get fluid_description => '30ml/kg nếu hạ huyết áp hoặc lactate ≥4';

  @override
  String get vasopressor => '5. Vasopressor';

  @override
  String get vasopressor_description =>
      'Nếu hạ huyết áp không đáp ứng với dịch truyền';

  @override
  String get child_pugh_score => 'Thang điểm Child-Pugh';

  @override
  String get child_pugh_classification => 'Phân loại Child-Pugh';

  @override
  String get mild_liver_disease => 'Bệnh gan nhẹ';

  @override
  String get moderate_liver_disease => 'Bệnh gan trung bình';

  @override
  String get severe_liver_disease => 'Bệnh gan nặng';

  @override
  String get low_operative_risk => 'Nguy cơ phẫu thuật thấp (10%)';

  @override
  String get moderate_operative_risk => 'Nguy cơ phẫu thuật trung bình (30%)';

  @override
  String get high_operative_risk => 'Nguy cơ phẫu thuật cao (82%)';

  @override
  String get child_pugh_laboratory_tests => 'Xét nghiệm';

  @override
  String get clinical_symptoms => 'Triệu chứng lâm sàng';

  @override
  String get ascites => 'Cổ trướng';

  @override
  String get hepatic_encephalopathy => 'Bệnh não gan';

  @override
  String get ascites_none => 'Không';

  @override
  String get ascites_mild_moderate => 'Nhẹ-trung bình (điều trị được)';

  @override
  String get ascites_severe => 'Nặng (kháng trị)';

  @override
  String get encephalopathy_none => 'Không';

  @override
  String get encephalopathy_grade_1_2 => 'Độ I-II (nhẹ-trung bình)';

  @override
  String get encephalopathy_grade_3_4 => 'Độ III-IV (nặng)';

  @override
  String get one_year_survival => 'Sống còn 1 năm';

  @override
  String get two_year_survival => 'Sống còn 2 năm';

  @override
  String get reference_material => 'Tài liệu tham khảo';

  @override
  String get bilirubin => 'Bilirubin';

  @override
  String get albumin => 'Albumin';

  @override
  String get inr_prothrombin_time => 'INR/Thời gian Prothrombin';

  @override
  String get enter_value => 'Nhập giá trị';

  @override
  String child_pugh_score_display(int score) {
    return 'Điểm: $score';
  }

  @override
  String get class_a_info =>
      '• Class A (5-6 điểm): Dự hậu tốt, có thể phẫu thuật';

  @override
  String get class_b_info =>
      '• Class B (7-9 điểm): Dự hậu trung bình, cân nhắc can thiệp';

  @override
  String get class_c_info =>
      '• Class C (10-15 điểm): Dự hậu xấu, ưu tiên ghép gan';

  @override
  String get child_pugh_clinical_information => 'Thông tin lâm sàng';

  @override
  String get child_pugh_usage =>
      '• Child-Pugh được sử dụng để đánh giá mức độ nặng của xơ gan';

  @override
  String get meld_combination =>
      '• Thường kết hợp với MELD score trong đánh giá bệnh gan';

  @override
  String get submit => 'Gửi';

  @override
  String get edit => 'Chỉnh sửa';

  @override
  String get delete => 'Xóa';

  @override
  String get add => 'Thêm';

  @override
  String get view => 'Xem';

  @override
  String get print => 'In';

  @override
  String get export => 'Xuất';

  @override
  String get import => 'Nhập';

  @override
  String get share => 'Chia sẻ';

  @override
  String get copy => 'Sao chép';

  @override
  String get paste => 'Dán';

  @override
  String get cut => 'Cắt';

  @override
  String get undo => 'Hoàn tác';

  @override
  String get redo => 'Làm lại';

  @override
  String get help => 'Trợ giúp';

  @override
  String get about => 'Về chúng tôi';

  @override
  String get contact => 'Liên hệ';

  @override
  String get feedback => 'Phản hồi';

  @override
  String get report_issue => 'Báo cáo lỗi';

  @override
  String get privacy_policy => 'Chính sách bảo mật';

  @override
  String get terms_of_service => 'Điều khoản dịch vụ';

  @override
  String get version => 'Phiên bản';

  @override
  String get update => 'Cập nhật';

  @override
  String get loading => 'Đang tải';

  @override
  String get error => 'Lỗi';

  @override
  String get success => 'Thành công';

  @override
  String get warning => 'Cảnh báo';

  @override
  String get info => 'Thông tin';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Đóng';

  @override
  String get minimize => 'Thu nhỏ';

  @override
  String get maximize => 'Phóng to';

  @override
  String get next => 'Tiếp theo';

  @override
  String get previous => 'Trước đó';

  @override
  String get first => 'Đầu tiên';

  @override
  String get last => 'Cuối cùng';

  @override
  String get page => 'Trang';

  @override
  String get show => 'Hiển thị';

  @override
  String get hide => 'Ẩn';

  @override
  String get expand => 'Mở rộng';

  @override
  String get collapse => 'Thu gọn';

  @override
  String get sort => 'Sắp xếp';

  @override
  String get filter => 'Lọc';

  @override
  String get group => 'Nhóm';

  @override
  String get ungroup => 'Bỏ nhóm';

  @override
  String get select_all => 'Chọn tất cả';

  @override
  String get deselect_all => 'Bỏ chọn tất cả';

  @override
  String get invert_selection => 'Đảo ngược lựa chọn';

  @override
  String get cha2ds2_vasc_score => 'Thang điểm CHA₂DS₂-VASc';

  @override
  String get risk_very_low => 'Nguy cơ rất thấp';

  @override
  String get risk_low => 'Nguy cơ thấp';

  @override
  String get risk_moderate => 'Nguy cơ trung bình';

  @override
  String get risk_high => 'Nguy cơ cao';

  @override
  String stroke_risk_per_year(String risk) {
    return 'Nguy cơ đột quỵ/năm: $risk';
  }

  @override
  String get no_anticoagulation_needed => 'Không cần kháng đông';

  @override
  String get consider_anticoagulation_or_aspirin =>
      'Cân nhắc kháng đông hoặc aspirin';

  @override
  String get oral_anticoagulation_recommended =>
      'Khuyến cáo kháng đông đường uống';

  @override
  String get major_risk_factors => 'Yếu tố nguy cơ chính';

  @override
  String get cha2ds2_vasc_usage =>
      '• CHA₂DS₂-VASc được sử dụng để đánh giá nguy cơ đột quỵ ở bệnh nhân rung nhĩ không do bệnh van tim';

  @override
  String get anticoagulation_male_recommendation =>
      '• Điểm ≥ 2 (nam) hoặc ≥ 3 (nữ): khuyến cáo kháng đông';

  @override
  String get anticoagulation_consideration =>
      '• Điểm = 1 (nam) hoặc = 2 (nữ): cân nhắc kháng đông';

  @override
  String get hasbled_combination =>
      '• Cần cân nhắc cùng với HAS-BLED score để đánh giá nguy cơ chảy máu';

  @override
  String get aids => 'AIDS';

  @override
  String get hematologic_malignancy => 'Ung thư máu';

  @override
  String get metastatic_cancer => 'Ung thư di căn';

  @override
  String get systolic_blood_pressure => 'Huyết áp tâm thu';

  @override
  String get blood_urea_nitrogen => 'Ure máu (BUN)';

  @override
  String get bicarbonate => 'Bicarbonate';

  @override
  String get low_moderate_risk => 'Nguy cơ trung bình thấp';

  @override
  String get moderate_risk => 'Nguy cơ trung bình';

  @override
  String get extremely_high_risk => 'Nguy cơ cực kỳ cao';

  @override
  String get age_and_gender_factors => 'Yếu tố tuổi tác và giới tính';

  @override
  String get important_information => 'Thông tin quan trọng';

  @override
  String get age_label => 'Tuổi:';

  @override
  String get enter_age => 'Nhập tuổi';

  @override
  String cha2ds2_age_score(int score) {
    return 'Điểm tuổi: $score (65-74: 1pt, ≥75: 2pts)';
  }

  @override
  String get cha2ds2_chf_description => 'Suy tim sung huyết';

  @override
  String get cha2ds2_hypertension_description => 'Tăng huyết áp';

  @override
  String get cha2ds2_diabetes_description => 'Đái tháo đường';

  @override
  String get cha2ds2_stroke_description => 'Tiền sử đột quỵ/TIA';

  @override
  String get cha2ds2_vascular_description =>
      'Bệnh mạch máu ngoại biên/MI/aortic plaque';

  @override
  String get gender_label => 'Giới tính:';

  @override
  String get male => 'Nam';

  @override
  String get female => 'Nữ';

  @override
  String get zero_points => '0 điểm';

  @override
  String get one_point => '1 điểm';

  @override
  String get meld_score => 'Thang điểm MELD';

  @override
  String get meld_parameters => 'Thông số MELD';

  @override
  String get transplant_guidelines => 'Hướng dẫn ghép gan';

  @override
  String get meld_risk_low => 'Thấp';

  @override
  String get meld_risk_low_moderate => 'Trung bình thấp';

  @override
  String get meld_risk_moderate => 'Trung bình';

  @override
  String get meld_risk_high => 'Cao';

  @override
  String get meld_risk_very_high => 'Rất cao';

  @override
  String get risk_text => 'Nguy cơ';

  @override
  String get priority_low => 'Ưu tiên thấp';

  @override
  String get priority_moderate => 'Ưu tiên trung bình';

  @override
  String get priority_high => 'Ưu tiên cao';

  @override
  String get dialysis => 'Chạy thận';

  @override
  String get dialysis_description =>
      'Đã chạy thận ít nhất 2 lần trong tuần qua hoặc CVVHD 24h';

  @override
  String get creatinine_helper =>
      'Tối đa 4.0 mg/dL (354 umol/L), tối thiểu 1.0 mg/dL (88 umol/L)';

  @override
  String get bilirubin_helper =>
      'Bilirubin toàn phần, tối thiểu 1.0 mg/dL (17 umol/L)';

  @override
  String get inr_helper => 'International Normalized Ratio, tối thiểu 1.0';

  @override
  String get mortality_3_month => 'Tử vong 3 tháng';

  @override
  String get transplant_priority => 'Ưu tiên ghép gan';

  @override
  String get meld_recommendations => 'Khuyến nghị:';

  @override
  String get meld_follow_up => 'Theo dõi định kỳ, quản lý biến chứng xơ gan';

  @override
  String get meld_evaluation => 'Đánh giá ghép gan, tầm soát biến chứng';

  @override
  String get meld_waitlist => 'Đưa vào danh sách chờ ghép gan';

  @override
  String get meld_high_priority => 'Ưu tiên cao ghép gan, theo dõi chặt chẽ';

  @override
  String get meld_urgent => 'Cần ghép gan khẩn cấp, xem xét ICU';

  @override
  String get meld_risk_stratification => 'Phân tầng nguy cơ MELD';

  @override
  String get meld_follow_up_action => 'Theo dõi định kỳ';

  @override
  String get meld_evaluation_action => 'Đánh giá ghép gan';

  @override
  String get meld_waitlist_action => 'Danh sách chờ';

  @override
  String get meld_high_priority_action => 'Ưu tiên cao';

  @override
  String get meld_urgent_action => 'Ghép khẩn cấp';

  @override
  String get meld_follow_up_title => 'MELD <15: Theo dõi';

  @override
  String get meld_waitlist_title => 'MELD 15-24: Danh sách chờ';

  @override
  String get meld_high_priority_title => 'MELD ≥25: Ưu tiên cao';

  @override
  String get routine_visit_6_months => 'Khám định kỳ 6 tháng';

  @override
  String get liver_ultrasound_6_months => 'Siêu âm gan 6 tháng';

  @override
  String get afp_every_6_months => 'AFP mỗi 6 tháng';

  @override
  String get screen_complications => 'Tầm soát biến chứng';

  @override
  String get add_to_waitlist => 'Đưa vào danh sách chờ ghép';

  @override
  String get comprehensive_evaluation => 'Đánh giá toàn diện';

  @override
  String get grace_score_title => 'Thang điểm GRACE';

  @override
  String get grace_risk_low => 'Nguy cơ thấp';

  @override
  String get grace_risk_moderate => 'Nguy cơ trung bình';

  @override
  String get grace_risk_high => 'Nguy cơ cao';

  @override
  String get grace_risk_very_high => 'Nguy cơ rất cao';

  @override
  String get grace_recommendation => 'Khuyến nghị:';

  @override
  String get grace_intervention_strategy => 'Chiến lược can thiệp:';

  @override
  String get grace_intervention_timing => 'Thời điểm can thiệp:';

  @override
  String get grace_detailed_intervention_timing =>
      'Chi tiết thời điểm can thiệp:';

  @override
  String get grace_reference_title => 'Tài liệu tham khảo';

  @override
  String get grace_reference_text =>
      'Fox KA, et al. Dự đoán nguy cơ tử vong và nhồi máu cơ tim trong 6 tháng sau khi nhập viện với hội chứng mạch vành cấp: nghiên cứu quan sát đa quốc gia tiến cứu (GRACE). BMJ. 2006;333(7578):1091.';

  @override
  String get grace_mortality_6_month_low => '< 1%';

  @override
  String get grace_mortality_6_month_moderate => '1-3%';

  @override
  String get grace_mortality_6_month_high => '3-8%';

  @override
  String get grace_mortality_6_month_very_high => '> 8%';

  @override
  String get grace_mortality_hospital_low => '< 2%';

  @override
  String get grace_mortality_hospital_moderate => '2-5%';

  @override
  String get grace_mortality_hospital_high => '5-12%';

  @override
  String get grace_mortality_hospital_very_high => '> 12%';

  @override
  String get grace_strategy_conservative => 'Chiến lược bảo tồn';

  @override
  String get grace_strategy_selective => 'Chiến lược can thiệp chọn lọc';

  @override
  String get grace_strategy_early => 'Chiến lược can thiệp sớm';

  @override
  String get grace_strategy_immediate => 'Chiến lược can thiệp ngay lập tức';

  @override
  String get grace_timing_72h => 'Can thiệp trong vòng 72 giờ';

  @override
  String get grace_timing_24_72h => 'Can thiệp trong vòng 24-72 giờ';

  @override
  String get grace_timing_24h => 'Can thiệp trong vòng 24 giờ';

  @override
  String get grace_timing_2h => 'Can thiệp khẩn cấp trong vòng 2 giờ';

  @override
  String get grace_detailed_timing_low =>
      'Thời gian can thiệp: Trong vòng 72 giờ\\n• PCI có thể trì hoãn nếu không có biến chứng\\n• Theo dõi tại khoa nội tim mạch\\n• Điều trị nội khoa tối ưu trước tiên';

  @override
  String get grace_detailed_timing_moderate =>
      'Thời gian can thiệp: Trong vòng 24-72 giờ\\n• PCI chọn lọc dựa trên triệu chứng\\n• Theo dõi chặt chẽ tại CCU\\n• Chuẩn bị sẵn sàng can thiệp khi cần';

  @override
  String get grace_detailed_timing_high =>
      'Thời gian can thiệp: Trong vòng 24 giờ\\n• PCI sớm được khuyến cáo\\n• Theo dõi tích cực tại CCU\\n• Chuẩn bị can thiệp khẩn cấp';

  @override
  String get grace_detailed_timing_very_high =>
      'Thời gian can thiệp: Khẩn cấp trong vòng 2 giờ\\n• PCI ngay lập tức được yêu cầu\\n• Theo dõi ICU\\n• Thông tim cấp cứu';

  @override
  String get grace_6_month_mortality => 'Tử vong 6 tháng';

  @override
  String get grace_hospital_mortality => 'Tử vong nội viện';

  @override
  String get grace_intervention_strategy_label => 'Chiến lược điều trị:';

  @override
  String get grace_clinical_info_title => 'Thông tin lâm sàng';

  @override
  String get grace_clinical_info_content =>
      'GRACE Score đánh giá nguy cơ tử vong ở bệnh nhân hội chứng mạch vành cấp (ACS)\\n\\nỨng dụng lâm sàng:\\n• Phân tầng nguy cơ và lựa chọn chiến lược điều trị\\n• Quyết định can thiệp sớm hay bảo tồn\\n• Tư vấn tiên lượng cho bệnh nhân và gia đình\\n• Đánh giá chỉ định chuyển tuyến\\n\\nChiến lược can thiệp theo thời gian:\\n• Nguy cơ thấp (≤108): Can thiệp trong 72h - PCI có thể trì hoãn\\n• Nguy cơ trung bình (109-140): Can thiệp trong 24-72h - PCI chọn lọc\\n• Nguy cơ cao (141-200): Can thiệp trong 24h - PCI sớm được khuyến cáo\\n• Nguy cơ rất cao (>200): Can thiệp khẩn cấp trong 2h - PCI cấp cứu\\n\\nLưu ý:\\n• Điểm số càng cao, nguy cơ tử vong càng lớn\\n• Cần kết hợp với đánh giá lâm sàng tổng thể\\n• Theo dõi và tái đánh giá định kỳ\\n• Áp dụng cho cả STEMI và NSTEMI/UA';

  @override
  String get grace_detailed_timing_title => 'Chi tiết thời điểm can thiệp:';

  @override
  String get grace_age_label => 'Tuổi (năm)';

  @override
  String get grace_heart_rate_label => 'Nhịp tim (/phút)';

  @override
  String get grace_systolic_bp_label => 'Huyết áp tâm thu (mmHg)';

  @override
  String get grace_creatinine_label => 'Creatinine';

  @override
  String get grace_creatinine_unit_label => 'Đơn vị Creatinine';

  @override
  String get grace_heart_failure_title =>
      'Suy tim hoặc rối loạn chức năng thất trái';

  @override
  String get grace_cardiac_arrest_title => 'Ngừng tim tại viện';

  @override
  String get grace_st_elevation_title => 'Chênh ST trên ECG';

  @override
  String get grace_elevated_markers_title => 'Tăng enzyme tim (Troponin/CK-MB)';

  @override
  String get grace_input_parameters => 'Thông số đầu vào';

  @override
  String get grace_clinical_factors => 'Yếu tố lâm sàng';

  @override
  String get grace_risk_stratification => 'Phân tầng nguy cơ';

  @override
  String get grace_risk_level => 'Mức độ nguy cơ';

  @override
  String get grace_6_month_mort => 'Tử vong 6 tháng';

  @override
  String get grace_hospital_mort => 'Tử vong nội viện';

  @override
  String get grace_intervention_timing_column => 'Thời điểm can thiệp';

  @override
  String get grace_recommendation_low =>
      'Điều trị ngoại trú có thể xem xét, theo dõi thường xuyên';

  @override
  String get grace_recommendation_moderate =>
      'Nhập viện theo dõi, điều trị theo hướng dẫn ACS';

  @override
  String get grace_recommendation_high =>
      'Cần can thiệp sớm, xem xét chuyển tuyến cao';

  @override
  String get grace_recommendation_very_high =>
      'Can thiệp cấp cứu ngay, ICU monitoring, PCI sớm';

  @override
  String get grace_recommendations_label => 'Khuyến nghị:';

  @override
  String get grace_intervention_timing_label => 'Thời gian can thiệp:';

  @override
  String get grace_per_minute_unit => '/phút';

  @override
  String get follow_up_3_months => 'Theo dõi 3 tháng';

  @override
  String get screen_liver_cancer => 'Tầm soát ung thư gan';

  @override
  String get high_priority_transplant => 'Ưu tiên cao ghép gan';

  @override
  String get weekly_monitoring => 'Theo dõi hàng tuần';

  @override
  String get consider_living_donor => 'Cân nhắc ghép sống';

  @override
  String get intensive_support => 'Hỗ trợ tích cực';

  @override
  String get meld_clinical_info =>
      'MELD Score đánh giá mức độ nặng bệnh gan giai đoạn cuối\n\nCông thức MELD:\n3.78 × ln(bilirubin) + 11.2 × ln(INR) + 9.57 × ln(creatinine) + 6.43\n\nCác điều chỉnh:\n• Creatinine: tối thiểu 1.0, tối đa 4.0 mg/dL\n• Nếu chạy thận: creatinine = 4.0 mg/dL\n• Bilirubin và INR: tối thiểu 1.0\n• Điểm MELD: tối thiểu 6, tối đa 40\n\nỨng dụng lâm sàng:\n• Ưu tiên ghép gan theo UNOS\n• Dự đoán tử vong ngắn hạn\n• Quyết định can thiệp\n• Theo dõi tiến triển bệnh\n\nMELD-Na (cải tiến):\n• Bổ sung natri huyết thanh\n• Cải thiện độ chính xác\n• Sử dụng rộng rãi hiện nay\n\nNgoại lệ ưu tiên:\n• Ung thư gan (HCC)\n• Bệnh gan fulminant\n• Các bệnh hiếm gặp\n• Tình trạng đặc biệt\n\nHạn chế:\n• Không bao gồm biến chứng\n• Thay đổi theo thời gian\n• Cần đánh giá tổng thể\n• Không dự đoán chức năng sau ghép';

  @override
  String get meld_reference_text =>
      'Kamath PS, et al. A model to predict survival in patients with end-stage liver disease. Hepatology. 2001;33(2):464-70.';

  @override
  String get clinical_scores_title => 'Thang điểm lâm sàng';

  @override
  String get clinical_scores_subtitle => 'Các thang điểm thường dùng trong ICU';

  @override
  String get gcs_list_description => 'Đánh giá mức độ ý thức bệnh nhân';

  @override
  String get apache_list_description => 'Dự đoán tỷ lệ tử vong trong ICU';

  @override
  String get sofa_list_description => 'Đánh giá suy đa tạng';

  @override
  String get saps_list_description => 'Dự đoán tỷ lệ tử vong bệnh nhân ICU';

  @override
  String get qsofa_list_description => 'Sàng lọc nhiễm khuẩn huyết ngoài ICU';

  @override
  String get mews_list_description =>
      'Hệ thống cảnh báo sớm tình trạng bệnh nhân';

  @override
  String get pews_list_description => 'Hệ thống cảnh báo sớm nhi khoa';

  @override
  String get grace_list_description =>
      'Đánh giá nguy cơ trong hội chứng mạch vành cấp';

  @override
  String get timi_stemi_list_description => 'Đánh giá nguy cơ tử vong STEMI';

  @override
  String get timi_ua_nstemi_list_description => 'Đánh giá nguy cơ UA/NSTEMI';

  @override
  String get crusade_list_description =>
      'Nguy cơ chảy máu trong hội chứng mạch vành cấp';

  @override
  String get has_bled_list_description =>
      'Đánh giá nguy cơ chảy máu khi chống đông';

  @override
  String get improve_list_description =>
      'Nguy cơ chảy máu ở bệnh nhân nội khoa';

  @override
  String get cha2ds2_vasc_list_description =>
      'Đánh giá nguy cơ đột quỵ trong rung nhĩ';

  @override
  String get wells_dvt_list_description =>
      'Đánh giá xác suất huyết khối tĩnh mạch sâu';

  @override
  String get padua_list_description => 'Đánh giá nguy cơ huyết khối tĩnh mạch';

  @override
  String get abcd2_list_description =>
      'Nguy cơ đột quỵ sau cơn thiếu máu não thoáng qua';

  @override
  String get nihss_list_description => 'Đánh giá mức độ nghiêm trọng đột quỵ';

  @override
  String get race_list_description => 'Sàng lọc tắc mạch máu lớn';

  @override
  String get aspect_list_description =>
      'Đánh giá diện tích nhồi máu não trên CT';

  @override
  String get sgarbossa_list_description =>
      'Chẩn đoán STEMI với block nhánh trái';

  @override
  String get ranson_list_description =>
      'Đánh giá mức độ nghiêm trọng viêm tụy cấp';

  @override
  String get child_pugh_list_description =>
      'Đánh giá mức độ nghiêm trọng bệnh gan';

  @override
  String get meld_list_description =>
      'Dự đoán tỷ lệ tử vong bệnh gan giai đoạn cuối';

  @override
  String get curb65_list_description =>
      'Đánh giá mức độ nghiêm trọng viêm phổi cộng đồng';

  @override
  String get psi_list_description => 'Chỉ số mức độ nghiêm trọng viêm phổi';

  @override
  String get asa_list_description =>
      'Phân loại tình trạng thể lực trước phẫu thuật';

  @override
  String get cardiac_risk_list_description =>
      'Đánh giá nguy cơ tim mạch phẫu thuật';

  @override
  String get apgar_list_description => 'Dự đoán kết quả sau phẫu thuật';

  @override
  String get preop_mortality_list_description =>
      'Dự đoán tỷ lệ tử vong trước phẫu thuật';

  @override
  String get dapt_list_description =>
      'Quyết định thời gian điều trị kháng tiểu cầu kép';

  @override
  String get dapt_title => 'Thang điểm DAPT';

  @override
  String get dapt_continue => 'Tiếp tục điều trị';

  @override
  String get dapt_discontinue => 'Ngừng điều trị';

  @override
  String get dapt_ischemic_benefit_high => 'Lợi ích chống đông cao';

  @override
  String get dapt_ischemic_benefit_low => 'Lợi ích chống đông thấp';

  @override
  String get dapt_bleeding_risk_high => 'Nguy cơ chảy máu cao';

  @override
  String get dapt_bleeding_risk_low => 'Nguy cơ chảy máu thấp';

  @override
  String get dapt_reasoning_continue =>
      'Lợi ích chống đông vượt trội so với nguy cơ chảy máu';

  @override
  String get dapt_reasoning_discontinue =>
      'Nguy cơ chảy máu vượt trội so với lợi ích chống đông';

  @override
  String get dapt_ischemic_benefit_label => 'Lợi ích chống đông';

  @override
  String get dapt_bleeding_risk_label => 'Nguy cơ chảy máu';

  @override
  String get dapt_rationale_label => 'Lý do';

  @override
  String get dapt_patient_factors => 'Yếu tố bệnh nhân';

  @override
  String get dapt_age_label => 'Tuổi';

  @override
  String get dapt_age_unit => 'năm';

  @override
  String get dapt_age_help => 'Tuổi khi đặt stent';

  @override
  String get dapt_smoking => 'Hút thuốc';

  @override
  String get dapt_smoking_desc => 'Hiện tại đang hút thuốc';

  @override
  String get dapt_diabetes => 'Đái tháo đường/Insulin';

  @override
  String get dapt_diabetes_desc =>
      'Có tiền sử đái tháo đường hoặc đang điều trị insulin';

  @override
  String get dapt_clinical_factors => 'Yếu tố lâm sàng';

  @override
  String get dapt_mi => 'Nhồi máu cơ tim khi đặt';

  @override
  String get dapt_mi_desc => 'Có nhồi máu cơ tim tại thời điểm đặt stent';

  @override
  String get dapt_heart_failure => 'Suy tim hoặc LVEF <30%';

  @override
  String get dapt_heart_failure_desc =>
      'Có suy tim hoặc phân suất tống máu thất trái <30%';

  @override
  String get dapt_vein_graft => 'Stent PCI vào graft tĩnh mạch';

  @override
  String get dapt_vein_graft_desc => 'Đặt stent vào graft tĩnh mạch chủ vành';

  @override
  String get dapt_stent_characteristics => 'Đặc điểm stent';

  @override
  String get dapt_bms => 'Stent kim loại thường (BMS)';

  @override
  String get dapt_bms_desc => 'Sử dụng stent kim loại thường thay vì DES';

  @override
  String get dapt_small_stent => 'Đường kính stent <3mm';

  @override
  String get dapt_small_stent_desc => 'Stent có đường kính nhỏ hơn 3mm';

  @override
  String get dapt_points_suffix => 'điểm';

  @override
  String get dapt_risk_benefit_analysis => 'Phân tích nguy cơ - lợi ích';

  @override
  String get dapt_continue_title => 'Tiếp tục DAPT';

  @override
  String get dapt_continue_mace => '• Giảm nguy cơ MACE';

  @override
  String get dapt_continue_mi => '• Giảm nguy cơ nhồi máu cơ tim';

  @override
  String get dapt_continue_stent => '• Giảm nguy cơ huyết khối stent';

  @override
  String get dapt_continue_bleeding => '• Tăng nguy cơ chảy máu';

  @override
  String get dapt_continue_conclusion => 'Lợi ích vượt trội nguy cơ';

  @override
  String get dapt_discontinue_title => 'Ngừng DAPT';

  @override
  String get dapt_discontinue_mace => '• Tăng nhẹ nguy cơ MACE';

  @override
  String get dapt_discontinue_bleeding => '• Giảm đáng kể nguy cơ chảy máu';

  @override
  String get dapt_discontinue_gi => '• Giảm chảy máu tiêu hóa';

  @override
  String get dapt_discontinue_ich => '• Giảm xuất huyết não';

  @override
  String get dapt_discontinue_conclusion => 'Giảm nguy cơ vượt trội lợi ích';

  @override
  String get dapt_clinical_guidelines => 'Hướng dẫn lâm sàng';

  @override
  String get dapt_guideline_continue_title => 'Tiếp tục DAPT (≥2 điểm)';

  @override
  String get dapt_guideline_continue_1 =>
      '• Tiếp tục aspirin + P2Y12 inhibitor';

  @override
  String get dapt_guideline_continue_2 => '• Theo dõi chảy máu định kỳ';

  @override
  String get dapt_guideline_continue_3 => '• Đánh giá lại sau 6-12 tháng';

  @override
  String get dapt_guideline_continue_4 => '• Cân nhắc ngừng nếu chảy máu';

  @override
  String get dapt_guideline_discontinue_title => 'Ngừng DAPT (<2 điểm)';

  @override
  String get dapt_guideline_discontinue_1 => '• Ngừng P2Y12 inhibitor';

  @override
  String get dapt_guideline_discontinue_2 => '• Tiếp tục aspirin đơn độc';

  @override
  String get dapt_guideline_discontinue_3 =>
      '• Theo dõi triệu chứng thiếu máu cơ tim';

  @override
  String get dapt_guideline_discontinue_4 => '• Khám lại định kỳ';

  @override
  String get dapt_guideline_special_title => 'Trường hợp đặc biệt';

  @override
  String get dapt_guideline_special_1 =>
      '• Nguy cơ chảy máu cao: Cân nhắc ngừng sớm';

  @override
  String get dapt_guideline_special_2 =>
      '• Phẫu thuật cần thiết: Ngừng tạm thời';

  @override
  String get dapt_guideline_special_3 => '• Tuổi cao (>75): Đánh giá cẩn thận';

  @override
  String get dapt_guideline_special_4 => '• Thận kém: Theo dõi chặt chẽ';

  @override
  String get dapt_clinical_info => 'Thông tin lâm sàng';

  @override
  String get dapt_clinical_text =>
      'DAPT Score giúp quyết định tiếp tục hay ngừng liệu pháp kháng tiểu cầu kép sau đặt stent vành. Điểm ≥2: tiếp tục DAPT, <2: ngừng DAPT.';

  @override
  String get dapt_reference_title => 'Tài liệu tham khảo';

  @override
  String get dapt_reference_text =>
      'Yeh RW, et al. Development and Validation of a Prediction Rule for Benefit and Harm of Dual Antiplatelet Therapy Beyond 1 Year After Percutaneous Coronary Intervention. JAMA. 2016;315(16):1735-1749.';

  @override
  String get creatinine_clearance_list_description => 'Đánh giá chức năng thận';

  @override
  String get creatinine_clearance_title => 'Độ thanh thải Creatinine';

  @override
  String get creatinine_clearance_result => 'Kết quả';

  @override
  String get creatinine_clearance_unit => 'mL/phút';

  @override
  String get creatinine_clearance_input_prompt => 'Nhập thông tin bệnh nhân';

  @override
  String get creatinine_clearance_input_title => 'Thông tin đầu vào';

  @override
  String get creatinine_clearance_age => 'Tuổi';

  @override
  String get creatinine_clearance_age_unit => 'năm';

  @override
  String get creatinine_clearance_weight => 'Cân nặng';

  @override
  String get creatinine_clearance_weight_unit => 'kg';

  @override
  String get creatinine_clearance_creatinine => 'Creatinine huyết thanh';

  @override
  String get creatinine_clearance_creatinine_normal =>
      'Bình thường: 0.6-1.2 mg/dL';

  @override
  String get creatinine_clearance_gender => 'Giới tính';

  @override
  String get creatinine_clearance_male => 'Nam';

  @override
  String get creatinine_clearance_female => 'Nữ';

  @override
  String get creatinine_clearance_function_normal =>
      'Chức năng thận bình thường';

  @override
  String get creatinine_clearance_function_mild => 'Giảm nhẹ chức năng thận';

  @override
  String get creatinine_clearance_function_mild_moderate =>
      'Giảm nhẹ-trung bình chức năng thận';

  @override
  String get creatinine_clearance_function_moderate_severe =>
      'Giảm trung bình-nặng chức năng thận';

  @override
  String get creatinine_clearance_function_severe => 'Giảm nặng chức năng thận';

  @override
  String get creatinine_clearance_function_esrd => 'Suy thận giai đoạn cuối';

  @override
  String get creatinine_clearance_stage_1 => 'Giai đoạn 1 (≥90)';

  @override
  String get creatinine_clearance_stage_2 => 'Giai đoạn 2 (60-89)';

  @override
  String get creatinine_clearance_stage_3a => 'Giai đoạn 3a (45-59)';

  @override
  String get creatinine_clearance_stage_3b => 'Giai đoạn 3b (30-44)';

  @override
  String get creatinine_clearance_stage_4 => 'Giai đoạn 4 (15-29)';

  @override
  String get creatinine_clearance_stage_5 => 'Giai đoạn 5 (<15)';

  @override
  String get creatinine_clearance_dosing_normal => 'Liều bình thường';

  @override
  String get creatinine_clearance_dosing_reduce_25_50 => 'Giảm liều 25-50%';

  @override
  String get creatinine_clearance_dosing_reduce_50_75 => 'Giảm liều 50-75%';

  @override
  String get creatinine_clearance_dosing_contraindicated => 'Chống chỉ định';

  @override
  String get creatinine_clearance_recommendation_normal => 'Theo dõi định kỳ';

  @override
  String get creatinine_clearance_recommendation_mild => 'Kiểm tra 6-12 tháng';

  @override
  String get creatinine_clearance_recommendation_mild_moderate =>
      'Kiểm tra 3-6 tháng';

  @override
  String get creatinine_clearance_recommendation_moderate_severe =>
      'Kiểm tra 1-3 tháng';

  @override
  String get creatinine_clearance_recommendation_severe =>
      'Kiểm tra hàng tháng';

  @override
  String get creatinine_clearance_recommendation_esrd => 'Cần thẩm phân';

  @override
  String get creatinine_clearance_drug_dosing => 'Điều chỉnh liều thuốc';

  @override
  String get creatinine_clearance_clinical_recommendation =>
      'Khuyến nghị lâm sàng';

  @override
  String get creatinine_clearance_reference_values => 'Giá trị tham chiếu';

  @override
  String get creatinine_clearance_range_90 => '≥90 mL/phút/1.73m²';

  @override
  String get creatinine_clearance_range_60_89 => '60-89 mL/phút/1.73m²';

  @override
  String get creatinine_clearance_range_45_59 => '45-59 mL/phút/1.73m²';

  @override
  String get creatinine_clearance_range_30_44 => '30-44 mL/phút/1.73m²';

  @override
  String get creatinine_clearance_range_15_29 => '15-29 mL/phút/1.73m²';

  @override
  String get creatinine_clearance_range_under_15 => '<15 mL/phút/1.73m²';

  @override
  String get creatinine_clearance_clinical_info => 'Thông tin lâm sàng';

  @override
  String get creatinine_clearance_clinical_text =>
      'Độ thanh thải creatinine đánh giá chức năng thận và hướng dẫn điều chỉnh liều thuốc. Sử dụng công thức Cockcroft-Gault.';

  @override
  String get creatinine_clearance_reference_title => 'Tài liệu tham khảo';

  @override
  String get creatinine_clearance_reference_text =>
      'Cockcroft DW, Gault MH. Prediction of creatinine clearance from serum creatinine. Nephron. 1976;16(1):31-41.';

  @override
  String get mdrd_list_description => 'Tính toán tốc độ lọc cầu thận';

  @override
  String get search_scores_hint => 'Tìm kiếm thang điểm...';

  @override
  String get mews_title => 'Thang điểm MEWS';

  @override
  String get mews_interpretation_enter_data =>
      'Vui lòng nhập các thông số sinh hiệu';

  @override
  String get mews_interpretation_stable =>
      'Tình trạng ổn định - theo dõi thường quy';

  @override
  String get mews_interpretation_increased => 'Cần tăng cường theo dõi';

  @override
  String get mews_interpretation_warning =>
      'Cảnh báo - cần đánh giá y tế khẩn cấp';

  @override
  String get mews_interpretation_critical =>
      'Cảnh báo cao - cần can thiệp ngay lập tức';

  @override
  String get mews_action_routine => 'Theo dõi 12 giờ/lần';

  @override
  String get mews_action_increased => 'Theo dõi 4-6 giờ/lần, thông báo bác sĩ';

  @override
  String get mews_action_urgent => 'Theo dõi 1 giờ/lần, gọi bác sĩ ngay';

  @override
  String get mews_action_critical => 'Theo dõi liên tục, báo cáo khẩn cấp';

  @override
  String get mews_systolic_bp => 'Huyết áp tâm thu (mmHg)';

  @override
  String get mews_heart_rate => 'Nhịp tim (lần/phút)';

  @override
  String get mews_respiratory_rate => 'Nhịp thở (lần/phút)';

  @override
  String get mews_temperature => 'Nhiệt độ (°C)';

  @override
  String get mews_consciousness_level => 'Mức độ ý thức (AVPU)';

  @override
  String get mews_enter_value => 'Nhập giá trị';

  @override
  String mews_score_label(int score) {
    return 'Điểm: $score';
  }

  @override
  String get mews_avpu_alert => 'Alert (Tỉnh táo)';

  @override
  String get mews_avpu_alert_subtitle => 'Bệnh nhân tỉnh táo, định hướng tốt';

  @override
  String get mews_avpu_voice => 'Voice (Phản ứng với tiếng nói)';

  @override
  String get mews_avpu_voice_subtitle => 'Chỉ phản ứng khi gọi to';

  @override
  String get mews_avpu_pain => 'Pain (Phản ứng với đau)';

  @override
  String get mews_avpu_pain_subtitle => 'Chỉ phản ứng khi kích thích đau';

  @override
  String get mews_avpu_unresponsive => 'Unresponsive (Không phản ứng)';

  @override
  String get mews_avpu_unresponsive_subtitle =>
      'Không phản ứng với bất kỳ kích thích nào';

  @override
  String get mews_references_title => 'Tài liệu tham khảo';

  @override
  String get pews_title => 'Thang điểm PEWS';

  @override
  String get pews_risk_low => 'Thấp';

  @override
  String get pews_risk_medium => 'Trung bình';

  @override
  String get pews_risk_high => 'Cao';

  @override
  String get pews_risk_critical => 'Nghiêm trọng';

  @override
  String get pews_age_label => 'Tuổi';

  @override
  String get pews_age_helper => 'Cần để tính giá trị bình thường theo tuổi';

  @override
  String get pews_heart_rate_label => 'Nhịp tim';

  @override
  String get pews_heart_rate_helper => 'Theo dõi bất thường theo tuổi';

  @override
  String get pews_respiratory_rate_label => 'Nhịp thở';

  @override
  String get pews_respiratory_rate_helper =>
      'Giá trị bình thường khác theo nhóm tuổi';

  @override
  String get pews_systolic_bp_label => 'Huyết áp tâm thu';

  @override
  String get pews_systolic_bp_helper => 'Hạ huyết áp là dấu hiệu muộn ở trẻ em';

  @override
  String get pews_consciousness_level => 'Mức độ ý thức';

  @override
  String get pews_consciousness_alert => 'Tỉnh táo (0)';

  @override
  String get pews_consciousness_voice => 'Phản ứng với tiếng nói (+1)';

  @override
  String get pews_consciousness_pain => 'Phản ứng với đau (+2)';

  @override
  String get pews_consciousness_unresponsive => 'Không phản ứng (+3)';

  @override
  String get pews_oxygen_therapy => 'Liệu pháp oxy';

  @override
  String get pews_oxygen_room_air => 'Khí trời (0)';

  @override
  String get pews_oxygen_nasal_cannula => 'Thông mũi (+1)';

  @override
  String get pews_oxygen_face_mask => 'Mặt nạ oxy (+2)';

  @override
  String get pews_oxygen_high_flow =>
      'Oxy lưu lượng cao/Thở máy không xâm lấn (+3)';

  @override
  String pews_risk_level(String level) {
    return 'Nguy cơ $level';
  }

  @override
  String get pews_response_level => 'Mức độ đáp ứng';

  @override
  String get pews_monitoring_frequency => 'Tần suất theo dõi';

  @override
  String get pews_clinical_response => 'Phản ứng lâm sàng';

  @override
  String get pews_response_routine => 'Theo dõi thường quy';

  @override
  String get pews_response_increased => 'Tăng cường theo dõi';

  @override
  String get pews_response_active => 'Can thiệp tích cực';

  @override
  String get pews_frequency_4_6_hours => 'Mỗi 4-6 giờ';

  @override
  String get pews_frequency_1_hour => 'Mỗi giờ';

  @override
  String get pews_frequency_continuous => 'Liên tục';

  @override
  String get pews_action_continue_care =>
      'Tiếp tục chăm sóc hiện tại, theo dõi định kỳ';

  @override
  String get pews_action_notify_doctor =>
      'Thông báo bác sĩ, tăng cường theo dõi, xem xét chuyển khoa';

  @override
  String get pews_action_emergency_team =>
      'Gọi team cấp cứu nhi khoa ngay lập tức, chuẩn bị chuyển ICU';

  @override
  String get pews_consciousness_title => 'Mức độ ý thức';

  @override
  String get pews_protocol_routine_title => 'PEWS 0-3: Chăm sóc thường quy';

  @override
  String get pews_protocol_increased_title => 'PEWS 4-6: Tăng cường theo dõi';

  @override
  String get pews_protocol_urgent_title => 'PEWS ≥7: Can thiệp tích cực';

  @override
  String get pews_protocol_routine_1 => 'Theo dõi sinh hiệu 4-6 giờ/lần';

  @override
  String get pews_protocol_routine_2 => 'Ghi nhận điểm PEWS';

  @override
  String get pews_protocol_routine_3 => 'Tiếp tục kế hoạch điều trị';

  @override
  String get pews_protocol_routine_4 => 'Đánh giá lại nếu tình trạng thay đổi';

  @override
  String get pews_protocol_increased_1 => 'Thông báo bác sĩ trực';

  @override
  String get pews_protocol_increased_2 => 'Theo dõi sinh hiệu 1-2 giờ/lần';

  @override
  String get pews_protocol_increased_3 => 'Xem xét nguyên nhân';

  @override
  String get pews_protocol_increased_4 => 'Cân nhắc chuyển khoa nhi';

  @override
  String get pews_protocol_urgent_1 => 'Gọi team cấp cứu nhi ngay';

  @override
  String get pews_protocol_urgent_2 => 'Theo dõi liên tục';

  @override
  String get pews_protocol_urgent_3 => 'Chuẩn bị chuyển PICU';

  @override
  String get pews_protocol_urgent_4 => 'ABC assessment';

  @override
  String get pews_clinical_info_title => 'Thông tin lâm sàng';

  @override
  String get pews_clinical_info_description =>
      'PEWS (Pediatric Early Warning Score) là công cụ sàng lọc để nhận diện sớm trẻ em có nguy cơ xấu đi\n\nƯu điểm:\n• Nhận diện sớm trẻ em bệnh nặng\n• Hướng dẫn mức độ can thiệp\n• Cải thiện kết quả điều trị\n• Giảm cardiac arrest ngoài ICU\n\nGiá trị bình thường theo tuổi:\n• <1 tuổi: HR 100-170, RR 30-45\n• 1-5 tuổi: HR 90-130, RR 20-35\n• 6-12 tuổi: HR 80-110, RR 15-25\n• >12 tuổi: HR 70-90, RR 12-22\n\nĐặc điểm sinh lý trẻ em:\n• Dự trữ tâm phổi hạn chế\n• Hạ huyết áp là dấu hiệu muộn\n• Tachycardia và tachypnea là dấu hiệu sớm\n• Rối loạn ý thức báo hiệu nguy hiểm\n\nLưu ý quan trọng:\n• Điều chỉnh theo độ tuổi\n• Đánh giá tổng thể lâm sàng\n• Theo dõi xu hướng thay đổi\n• Kết hợp với khám thực thể';

  @override
  String get pews_references_title => 'Tài liệu tham khảo';

  @override
  String get pews_references_text =>
      'Monaghan A. Detecting and managing deterioration in children. Paediatr Nurs. 2005;17(1):32-5.\n\nPearson GA, et al. Should paediatric early warning scores be used in all pediatric wards? Arch Dis Child. 2017;102(1):4-6.\n\nLambert V, et al. The Paediatric Early Warning System (PEWS): where we are now and where we need to go. Clin Risk. 2017;23(1):12-19.';

  @override
  String get pews_response_protocol_title => 'Quy trình đáp ứng';

  @override
  String get pews_interp_low_risk => 'Nguy cơ thấp';

  @override
  String get pews_interp_moderate_risk => 'Nguy cơ trung bình';

  @override
  String get pews_interp_high_risk => 'Nguy cơ cao';

  @override
  String get pews_interp_frequency_4_6h => 'Mỗi 4-6h';

  @override
  String get pews_interp_frequency_1_2h => 'Mỗi 1-2h';

  @override
  String get pews_interp_frequency_continuous => 'Liên tục';

  @override
  String get pews_interp_routine_care => 'Chăm sóc thường quy';

  @override
  String get pews_interp_notify_physician => 'Thông báo bác sĩ';

  @override
  String get pews_interp_emergency_team => 'Team cấp cứu nhi';

  @override
  String get pews_risk_stratification_title => 'Phân tầng nguy cơ PEWS';

  @override
  String get pews_recommendation_title => 'Khuyến nghị:';

  @override
  String get pews_vital_signs_title => 'Thông số sinh hiệu';

  @override
  String get pews_age_unit => 'năm';

  @override
  String get unit_per_minute => '/phút';

  @override
  String get sepsis_bundle_lactate_title => '1. Lactate đo lường';

  @override
  String get sepsis_bundle_lactate_desc => 'Lấy máu xét nghiệm lactate';

  @override
  String get sepsis_bundle_blood_culture_title => '2. Cấy máu';

  @override
  String get sepsis_bundle_blood_culture_desc =>
      'Cấy máu trước khi dùng kháng sinh';

  @override
  String get sepsis_bundle_antibiotics_title => '3. Kháng sinh';

  @override
  String get sepsis_bundle_antibiotics_desc =>
      'Kháng sinh phổ rộng trong 1 giờ';

  @override
  String get sepsis_bundle_fluid_title => '4. Dịch truyền';

  @override
  String get sepsis_bundle_fluid_desc =>
      '30ml/kg nếu hạ huyết áp hoặc lactate ≥4';

  @override
  String get sepsis_bundle_vasopressor_title => '5. Vasopressor';

  @override
  String get sepsis_bundle_vasopressor_desc =>
      'Nếu hạ huyết áp không đáp ứng dịch';

  @override
  String get timi_stemi_title => 'Thang điểm TIMI STEMI';

  @override
  String get timi_stemi_risk_low => 'Nguy cơ thấp';

  @override
  String get timi_stemi_risk_moderate => 'Nguy cơ trung bình';

  @override
  String get timi_stemi_risk_high => 'Nguy cơ cao';

  @override
  String get timi_stemi_risk_very_high => 'Nguy cơ rất cao';

  @override
  String get timi_stemi_mortality_30day => 'Tỷ lệ tử vong 30 ngày';

  @override
  String get timi_stemi_treatment_recommendations => 'Khuyến nghị điều trị';

  @override
  String get timi_stemi_recommendation_low => 'Điều trị tiêu chuẩn';

  @override
  String get timi_stemi_recommendation_moderate => 'Theo dõi chặt chẽ';

  @override
  String get timi_stemi_recommendation_high => 'Điều trị tích cực';

  @override
  String get timi_stemi_recommendation_very_high => 'Hồi sức tích cực';

  @override
  String get timi_stemi_age_65_74 => 'Tuổi 65-74';

  @override
  String get timi_stemi_age_75_plus => 'Tuổi ≥75';

  @override
  String get timi_stemi_weight_low => 'Cân nặng <67kg';

  @override
  String get timi_stemi_dm_htn_angina => 'ĐTĐ/THA/Đau thắt ngực';

  @override
  String get timi_stemi_anterior_mi_lbbb => 'NMCT trước/LBBB';

  @override
  String get timi_stemi_time_to_treatment => 'Thời gian >4h';

  @override
  String get timi_stemi_hr_100_plus => 'Nhịp tim ≥100';

  @override
  String get timi_stemi_sbp_low => 'HA tâm thu <100';

  @override
  String get timi_stemi_age_label => 'Tuổi';

  @override
  String get timi_stemi_weight_label => 'Cân nặng';

  @override
  String get timi_stemi_hr_label => 'Nhịp tim';

  @override
  String get timi_stemi_sbp_label => 'Huyết áp tâm thu';

  @override
  String get timi_stemi_diabetes_label => 'Đái tháo đường';

  @override
  String get timi_stemi_hypertension_label => 'Tăng huyết áp';

  @override
  String get timi_stemi_angina_label => 'Đau thắt ngực';

  @override
  String get timi_stemi_anterior_mi_label => 'NMCT trước';

  @override
  String get timi_stemi_time_4h_label => 'Thời gian >4h';

  @override
  String get timi_stemi_systolic_bp_label => 'HA tâm thu';

  @override
  String get timi_stemi_systolic_bp_unit => 'mmHg';

  @override
  String get timi_ua_nstemi_title => 'Thang điểm TIMI UA/NSTEMI';

  @override
  String get timi_ua_nstemi_age_label => 'Tuổi';

  @override
  String get timi_ua_nstemi_age_unit => 'năm';

  @override
  String get timi_ua_nstemi_cad_risk_factors => '≥3 yếu tố nguy cơ BĐVMC';

  @override
  String get timi_ua_nstemi_cad_risk_factors_subtitle =>
      'ĐTĐ, THA, hút thuốc, cholesterol cao, tiền sử gia đình';

  @override
  String get timi_ua_nstemi_known_cad => 'Hẹp mạch vành đã biết';

  @override
  String get timi_ua_nstemi_known_cad_subtitle =>
      'Hẹp >50% trên mạch vành chính';

  @override
  String get timi_ua_nstemi_aspirin_use => 'Dùng aspirin 7 ngày qua';

  @override
  String get timi_ua_nstemi_aspirin_use_subtitle =>
      'Đã dùng aspirin trong tuần qua';

  @override
  String get timi_ua_nstemi_severe_angina => 'Đau thắt ngực nặng';

  @override
  String get timi_ua_nstemi_severe_angina_subtitle => '≥2 cơn trong 24h qua';

  @override
  String get timi_ua_nstemi_st_changes => 'Thay đổi ST ≥0.5mm';

  @override
  String get timi_ua_nstemi_st_changes_subtitle => 'Chênh lệch ST trên ECG';

  @override
  String get timi_ua_nstemi_elevated_markers => 'Tăng men tim';

  @override
  String get timi_ua_nstemi_elevated_markers_subtitle => 'CK-MB, Troponin tăng';

  @override
  String get timi_ua_nstemi_risk_factors_title => 'Yếu tố nguy cơ';

  @override
  String get timi_ua_nstemi_patient_parameters => 'Thông số bệnh nhân';

  @override
  String get timi_ua_nstemi_clinical_info => 'Thông tin lâm sàng';

  @override
  String get timi_ua_nstemi_recommendation_low => 'Điều trị nội khoa';

  @override
  String get timi_ua_nstemi_recommendation_moderate => 'Can thiệp sớm';

  @override
  String get timi_ua_nstemi_recommendation_high => 'Can thiệp khẩn cấp';

  @override
  String get timi_ua_nstemi_strategy_conservative => 'Chiến lược bảo tồn';

  @override
  String get timi_ua_nstemi_strategy_selective => 'Can thiệp chọn lọc';

  @override
  String get timi_ua_nstemi_strategy_early => 'Can thiệp sớm';

  @override
  String get timi_ua_nstemi_references => 'Tài liệu tham khảo';

  @override
  String get timi_ua_nstemi_14_day_events => 'Biến cố 14 ngày';

  @override
  String get timi_ua_nstemi_treatment_strategy => 'Chiến lược điều trị';

  @override
  String get timi_ua_nstemi_mortality => 'Tỷ lệ tử vong';

  @override
  String get timi_ua_nstemi_recommendation => 'Khuyến nghị';

  @override
  String get crusade_title => 'Thang điểm CRUSADE';

  @override
  String get crusade_score => 'Điểm số';

  @override
  String get crusade_risk_very_low => 'Rất thấp';

  @override
  String get crusade_risk_low => 'Thấp';

  @override
  String get crusade_risk_moderate => 'Trung bình';

  @override
  String get crusade_risk_high => 'Cao';

  @override
  String get crusade_risk_very_high => 'Rất cao';

  @override
  String get crusade_bleeding_risk => 'Nguy cơ chảy máu';

  @override
  String get crusade_major_bleeding => 'Chảy máu nặng';

  @override
  String get crusade_recommendation => 'Khuyến nghị';

  @override
  String get crusade_clinical_parameters => 'Thông số lâm sàng';

  @override
  String get crusade_hematocrit => 'Hematocrit';

  @override
  String get crusade_creatinine => 'Creatinine';

  @override
  String get crusade_creatinine_helper => 'mg/dL hoặc μmol/L';

  @override
  String get crusade_unit => 'Đơn vị';

  @override
  String get crusade_heart_rate => 'Nhịp tim';

  @override
  String get crusade_heart_rate_unit => 'lần/phút';

  @override
  String get crusade_heart_rate_helper => 'Nhịp tim tại thời điểm nhập viện';

  @override
  String get crusade_systolic_bp => 'Huyết áp tâm thu';

  @override
  String get crusade_systolic_bp_helper => 'mmHg tại thời điểm nhập viện';

  @override
  String get crusade_gender => 'Giới tính';

  @override
  String get crusade_male => 'Nam';

  @override
  String get crusade_female => 'Nữ';

  @override
  String get crusade_diabetes => 'Đái tháo đường';

  @override
  String get crusade_no => 'Không';

  @override
  String get crusade_yes => 'Có';

  @override
  String get crusade_vascular_disease => 'Bệnh mạch máu ngoại vi';

  @override
  String get crusade_vascular_yes => 'Có tiền sử BMM ngoại vi';

  @override
  String get crusade_recommendation_very_low =>
      'Điều trị chuẩn, theo dõi thường quy';

  @override
  String get crusade_recommendation_low => 'Theo dõi chặt chẽ hơn';

  @override
  String get crusade_recommendation_moderate => 'Cân nhắc điều chỉnh thuốc';

  @override
  String get crusade_recommendation_high => 'Giảm liều kháng đông';

  @override
  String get crusade_recommendation_very_high => 'Tránh thuốc có nguy cơ cao';

  @override
  String get crusade_major_bleeding_very_low => '3.1%';

  @override
  String get crusade_major_bleeding_low => '5.5%';

  @override
  String get crusade_major_bleeding_moderate => '8.6%';

  @override
  String get crusade_major_bleeding_high => '11.9%';

  @override
  String get crusade_major_bleeding_very_high => '19.5%';

  @override
  String crusade_risk_category(String riskLevel) {
    return 'Phân loại nguy cơ';
  }

  @override
  String get crusade_bleeding_risk_label => 'Nguy cơ chảy máu';

  @override
  String get crusade_major_bleeding_label => 'Chảy máu nặng';

  @override
  String get crusade_recommendation_label => 'Khuyến nghị điều trị';

  @override
  String get crusade_hematocrit_label => 'Hematocrit (%)';

  @override
  String get crusade_hematocrit_helper => 'Tỷ lệ thể tích hồng cầu';

  @override
  String get crusade_creatinine_label => 'Creatinine huyết thanh';

  @override
  String get crusade_references => 'Tài liệu tham khảo';

  @override
  String get crusade_unit_label => 'Đơn vị';

  @override
  String get crusade_systolic_bp_unit => 'mmHg';

  @override
  String get crusade_gender_label => 'Giới tính';

  @override
  String get crusade_male_label => 'Nam';

  @override
  String get crusade_female_label => 'Nữ';

  @override
  String get crusade_diabetes_label => 'Đái tháo đường';

  @override
  String get crusade_no_label => 'Không';

  @override
  String get crusade_yes_diabetes => 'Có tiền sử ĐTĐ';

  @override
  String get crusade_vascular_disease_label => 'Bệnh mạch máu ngoại vi';

  @override
  String get crusade_yes_vascular => 'Có BMM ngoại vi';

  @override
  String get crusade_risk_stratification => 'Phân tầng nguy cơ';

  @override
  String get crusade_strategy_very_low => 'Điều trị theo khuyến cáo chuẩn';

  @override
  String get crusade_strategy_low => 'Theo dõi chức năng thận, đông máu';

  @override
  String get crusade_strategy_moderate => 'Cân nhắc giảm liều anticoagulant';

  @override
  String get crusade_strategy_high => 'Ưu tiên UFH thay vì LMWH';

  @override
  String get crusade_strategy_very_high =>
      'Tránh GP IIb/IIIa, ưu tiên can thiệp';

  @override
  String get crusade_clinical_approach => 'Tiếp cận lâm sàng';

  @override
  String get crusade_invasive_strategy => 'Chiến lược can thiệp';

  @override
  String get crusade_conservative_strategy => 'Chiến lược bảo tồn';

  @override
  String get crusade_invasive_item1 => '• Can thiệp sớm trong 24h';

  @override
  String get crusade_invasive_item2 => '• Sử dụng kháng đông liều thấp';

  @override
  String get crusade_invasive_item3 => '• Tránh GP IIb/IIIa nếu có thể';

  @override
  String get crusade_invasive_item4 => '• Theo dõi chảy máu chặt chẽ';

  @override
  String get crusade_conservative_item1 => '• Điều trị nội khoa tối ưu';

  @override
  String get crusade_conservative_item2 => '• Theo dõi lâm sàng chặt chẽ';

  @override
  String get crusade_conservative_item3 => '• Cân nhắc can thiệp nếu cần';

  @override
  String get crusade_conservative_item4 => '• Ngừng kháng đông sớm';

  @override
  String get crusade_clinical_info => 'Thông tin lâm sàng';

  @override
  String get crusade_clinical_info_content =>
      'CRUSADE Score đánh giá nguy cơ chảy máu trong hội chứng vành cấp, giúp cân bằng lợi ích và nguy cơ của liệu pháp kháng đông.';

  @override
  String get has_bled_title => 'Thang điểm HAS-BLED';

  @override
  String get has_bled_risk_low => 'Nguy cơ thấp';

  @override
  String get has_bled_risk_moderate => 'Nguy cơ trung bình';

  @override
  String get has_bled_risk_high => 'Nguy cơ cao';

  @override
  String get has_bled_bleeding_risk => 'Nguy cơ chảy máu';

  @override
  String get has_bled_clinical_approach => 'Tiếp cận lâm sàng';

  @override
  String get has_bled_recommendations => 'Khuyến nghị';

  @override
  String get has_bled_recommendation_low => 'Tiếp tục kháng đông';

  @override
  String get has_bled_recommendation_moderate => 'Thận trọng, theo dõi';

  @override
  String get has_bled_recommendation_high => 'Cân nhắc ngừng';

  @override
  String get has_bled_approach_low => 'Điều trị tiêu chuẩn';

  @override
  String get has_bled_approach_moderate => 'Theo dõi chặt chẽ';

  @override
  String get has_bled_approach_high => 'Đánh giá nguy cơ/lợi ích';

  @override
  String get has_bled_risk_factors => 'Yếu tố nguy cơ';

  @override
  String get has_bled_hypertension => 'Tăng huyết áp';

  @override
  String get has_bled_hypertension_desc => 'HA tâm thu >160 mmHg';

  @override
  String get has_bled_abnormal_renal => 'Chức năng thận bất thường';

  @override
  String get has_bled_abnormal_renal_desc => 'Thẩm phân, ghép thận, Cr >200';

  @override
  String get has_bled_abnormal_liver => 'Chức năng gan bất thường';

  @override
  String get has_bled_abnormal_liver_desc => 'Xơ gan hoặc Bili >2x, ALT >3x';

  @override
  String get has_bled_stroke => 'Đột quỵ';

  @override
  String get has_bled_stroke_desc => 'Tiền sử đột quỵ';

  @override
  String get has_bled_bleeding => 'Tiền sử chảy máu';

  @override
  String get has_bled_bleeding_desc => 'Chảy máu nặng hoặc thiếu máu';

  @override
  String get has_bled_labile_inr => 'INR không ổn định';

  @override
  String get has_bled_labile_inr_desc =>
      'INR <60% thời gian trong vùng mục tiêu';

  @override
  String get has_bled_elderly => 'Tuổi cao';

  @override
  String get has_bled_elderly_desc => 'Tuổi >65';

  @override
  String get has_bled_drugs => 'Thuốc/Rượu';

  @override
  String get has_bled_drugs_desc => 'Kháng tiểu cầu, NSAID, hoặc rượu';

  @override
  String get has_bled_alcohol => 'Sử dụng rượu';

  @override
  String get has_bled_alcohol_desc => 'Sử dụng rượu thường xuyên (≥8 ly/tuần)';

  @override
  String has_bled_active_factors(int count) {
    return 'Yếu tố hiện tại';
  }

  @override
  String get has_bled_risk_stratification => 'Phân tầng nguy cơ';

  @override
  String get has_bled_continue_anticoag => 'Tiếp tục kháng đông';

  @override
  String get has_bled_caution_monitor => 'Thận trọng, theo dõi';

  @override
  String get has_bled_consider_stop => 'Cân nhắc ngừng kháng đông';

  @override
  String get has_bled_clinical_approach_title => 'Tiếp cận lâm sàng';

  @override
  String has_bled_approach_for_score(int score) {
    return 'Tiếp cận theo điểm số';
  }

  @override
  String get has_bled_clinical_info => 'Thông tin lâm sàng';

  @override
  String get has_bled_clinical_info_content =>
      'HAS-BLED đánh giá nguy cơ chảy máu khi dùng kháng đông trong rung nhĩ, giúp cân bằng nguy cơ và lợi ích.';

  @override
  String get has_bled_references => 'Tài liệu tham khảo';

  @override
  String get has_bled_risk_low_range => '0-2 điểm';

  @override
  String get has_bled_risk_moderate_range => '3 điểm';

  @override
  String get has_bled_risk_high_range => '≥4 điểm';

  @override
  String get has_bled_factor_hypertension => 'Tăng huyết áp';

  @override
  String get has_bled_factor_abnormal_renal => 'Chức năng thận bất thường';

  @override
  String get has_bled_factor_abnormal_liver => 'Chức năng gan bất thường';

  @override
  String get has_bled_factor_stroke => 'Đột quỵ';

  @override
  String get has_bled_factor_bleeding => 'Tiền sử chảy máu';

  @override
  String get has_bled_factor_labile_inr => 'INR không ổn định';

  @override
  String get has_bled_factor_elderly => 'Tuổi cao';

  @override
  String get has_bled_factor_drugs => 'Thuốc/Rượu';

  @override
  String get has_bled_factor_alcohol => 'Sử dụng rượu';

  @override
  String get improve_bleeding_risk_title => 'Thang điểm IMPROVE Bleeding';

  @override
  String get improve_bleeding_risk_score => 'Điểm số';

  @override
  String get improve_low_risk => 'Nguy cơ thấp';

  @override
  String get improve_moderate_risk => 'Nguy cơ trung bình';

  @override
  String get improve_high_risk => 'Nguy cơ cao';

  @override
  String get improve_bleeding_risk => 'Nguy cơ chảy máu';

  @override
  String get improve_major_bleeding => 'Chảy máu nặng';

  @override
  String get improve_prophylaxis_strategy => 'Chiến lược dự phòng';

  @override
  String get improve_recommendations => 'Khuyến nghị';

  @override
  String get improve_standard_prophylaxis => 'Dự phòng tiêu chuẩn';

  @override
  String get improve_careful_prophylaxis => 'Dự phòng thận trọng';

  @override
  String get improve_mechanical_prophylaxis => 'Chỉ dự phòng cơ học';

  @override
  String get improve_standard_anticoagulation => 'Kháng đông tiêu chuẩn';

  @override
  String get improve_careful_consideration => 'Cân nhắc cẩn thận';

  @override
  String get improve_caution_anticoagulants => 'Thận trọng với kháng đông';

  @override
  String get improve_patient_information => 'Thông tin bệnh nhân';

  @override
  String get improve_age => 'Tuổi';

  @override
  String get improve_age_helper => 'Tuổi của bệnh nhân';

  @override
  String get improve_years => 'năm';

  @override
  String get improve_bleeding_risk_factors => 'Yếu tố nguy cơ chảy máu';

  @override
  String get improve_female => 'Giới tính nữ';

  @override
  String get improve_female_desc => 'Bệnh nhân nữ';

  @override
  String get improve_cancer => 'Ung thư đang hoạt động';

  @override
  String get improve_cancer_desc => 'Ung thư trong 6 tháng qua';

  @override
  String get improve_dialysis => 'Thẩm phân thận';

  @override
  String get improve_dialysis_desc => 'Đang thẩm phân';

  @override
  String get improve_liver_disease => 'Bệnh gan';

  @override
  String get improve_liver_disease_desc => 'Xơ gan hoặc suy gan';

  @override
  String get improve_icu_stay => 'Nằm ICU';

  @override
  String get improve_icu_stay_desc => 'Đang điều trị tại ICU';

  @override
  String get improve_icu_48h => 'ICU >48h';

  @override
  String get improve_icu_48h_desc => 'Nằm ICU >48 giờ';

  @override
  String get improve_anticoagulants => 'Dùng kháng đông';

  @override
  String get improve_anticoagulants_desc => 'Đang dùng thuốc kháng đông';

  @override
  String improve_current_risk_factors(int count) {
    return 'Yếu tố nguy cơ hiện tại';
  }

  @override
  String get improve_age_factor => 'Tuổi';

  @override
  String get improve_age_factor_desc => 'Yếu tố tuổi tác';

  @override
  String get improve_female_factor => 'Giới tính nữ';

  @override
  String get improve_cancer_factor => 'Ung thư hoạt động';

  @override
  String get improve_dialysis_factor => 'Thẩm phân';

  @override
  String get improve_liver_disease_factor => 'Bệnh gan';

  @override
  String get improve_icu_stay_factor => 'Nằm ICU';

  @override
  String get improve_icu_48h_factor => 'ICU >48h';

  @override
  String get improve_anticoagulants_factor => 'Kháng đông';

  @override
  String get improve_risk_stratification => 'Phân tầng nguy cơ';

  @override
  String get improve_clinical_information => 'Thông tin lâm sàng';

  @override
  String get improve_clinical_info_text =>
      'IMPROVE Bleeding Score đánh giá nguy cơ chảy máu để hướng dẫn dự phòng huyết khối tĩnh mạch ở bệnh nhân nội khoa.';

  @override
  String get improve_reference_title => 'Tài liệu tham khảo';

  @override
  String get improve_reference_text =>
      'Hostler DC, et al. Validation of the IMPROVE Bleeding Risk Score. Chest. 2016;149(2):372-379.';

  @override
  String get wells_dvt_title => 'Thang điểm Wells DVT';

  @override
  String get wells_dvt_score => 'Điểm số';

  @override
  String get wells_low_risk => 'Nguy cơ thấp';

  @override
  String get wells_moderate_risk => 'Nguy cơ trung bình';

  @override
  String get wells_high_risk => 'Nguy cơ cao';

  @override
  String get wells_dvt_probability => 'Xác suất DVT';

  @override
  String get wells_next_step => 'Bước tiếp theo';

  @override
  String get wells_check_ddimer => 'Kiểm tra D-dimer';

  @override
  String get wells_ddimer_or_ultrasound => 'D-dimer hoặc siêu âm';

  @override
  String get wells_immediate_ultrasound => 'Siêu âm ngay';

  @override
  String get wells_recommendations => 'Khuyến nghị';

  @override
  String get wells_low_risk_recommendation =>
      'D-dimer, nếu âm tính loại trừ DVT';

  @override
  String get wells_moderate_risk_recommendation =>
      'D-dimer hoặc siêu âm doppler';

  @override
  String get wells_high_risk_recommendation => 'Siêu âm doppler ngay lập tức';

  @override
  String get wells_criteria_title => 'Tiêu chí Wells';

  @override
  String get wells_active_cancer => 'Ung thư đang hoạt động';

  @override
  String get wells_active_cancer_desc =>
      'Điều trị hiện tại hoặc trong 6 tháng qua';

  @override
  String get wells_paralysis => 'Liệt/Bất động';

  @override
  String get wells_paralysis_desc => 'Liệt hoặc bất động chân';

  @override
  String get wells_bed_rest => 'Nằm giường >3 ngày';

  @override
  String get wells_bed_rest_desc => 'Gần đây nằm giường >3 ngày';

  @override
  String get wells_major_surgery => 'Phẫu thuật lớn';

  @override
  String get wells_major_surgery_desc => 'Trong 4 tuần qua';

  @override
  String get wells_localized_tenderness => 'Đau khu trú';

  @override
  String get wells_localized_tenderness_desc => 'Đau dọc theo tĩnh mạch sâu';

  @override
  String get wells_entire_leg_swollen => 'Cả chân sưng';

  @override
  String get wells_entire_leg_swollen_desc => 'Toàn bộ chân sưng';

  @override
  String get wells_calf_swelling => 'Sưng bắp chân';

  @override
  String get wells_calf_swelling_desc => 'Bắp chân sưng >3cm so với chân kia';

  @override
  String get wells_pitting_edema => 'Phù ấn hố';

  @override
  String get wells_pitting_edema_desc => 'Phù ấn hố ở chân có triệu chứng';

  @override
  String get wells_collateral_veins => 'Tĩnh mạch bàng hệ';

  @override
  String get wells_collateral_veins_desc =>
      'Tĩnh mạch nông giãn không do suy tĩnh mạch';

  @override
  String get wells_previous_dvt => 'Tiền sử DVT';

  @override
  String get wells_previous_dvt_desc => 'Có tiền sử huyết khối tĩnh mạch sâu';

  @override
  String get wells_alternative_diagnosis => 'Chẩn đoán khác';

  @override
  String get wells_alternative_diagnosis_desc =>
      'Có chẩn đoán khác khả thi hơn DVT';

  @override
  String wells_current_criteria(int count) {
    return 'Tiêu chí hiện tại';
  }

  @override
  String get wells_risk_stratification => 'Phân tầng nguy cơ';

  @override
  String get wells_clinical_approach => 'Tiếp cận lâm sàng';

  @override
  String wells_approach_for_score(int score) {
    return 'Tiếp cận theo điểm số';
  }

  @override
  String get wells_low_risk_approach => 'D-dimer âm tính loại trừ DVT';

  @override
  String get wells_moderate_risk_approach => 'D-dimer hoặc siêu âm';

  @override
  String get wells_high_risk_approach => 'Siêu âm doppler ngay';

  @override
  String get wells_clinical_information => 'Thông tin lâm sàng';

  @override
  String get wells_clinical_info_text =>
      'Wells DVT Score đánh giá xác suất huyết khối tĩnh mạch sâu, giúp hướng dẫn xét nghiệm tiếp theo.';

  @override
  String get wells_reference_title => 'Tài liệu tham khảo';

  @override
  String get wells_reference_text =>
      'Wells PS, et al. Value of assessment of pretest probability of deep-vein thrombosis in clinical management. Lancet. 1997;350(9094):1795-8.';

  @override
  String get padua_prediction_score_title => 'Thang điểm Padua';

  @override
  String get padua_prediction_score => 'Điểm số';

  @override
  String get padua_low_risk => 'Nguy cơ thấp';

  @override
  String get padua_high_risk => 'Nguy cơ cao';

  @override
  String get padua_vte_risk => 'Nguy cơ VTE';

  @override
  String get padua_prophylaxis => 'Dự phòng';

  @override
  String get padua_recommendations => 'Khuyến nghị';

  @override
  String get padua_no_prophylaxis => 'Không cần dự phòng';

  @override
  String get padua_pharmacological_prophylaxis => 'Dự phòng dược lý';

  @override
  String get padua_mechanical_prophylaxis => 'Dự phòng cơ học';

  @override
  String get padua_pharmacological_mechanical => 'Dự phòng dược lý + cơ học';

  @override
  String get padua_risk_factors_title => 'Yếu tố nguy cơ';

  @override
  String padua_current_risk_factors(int count) {
    return 'Yếu tố nguy cơ hiện tại';
  }

  @override
  String get padua_risk_stratification => 'Phân tầng nguy cơ';

  @override
  String get padua_prophylaxis_recommendations => 'Khuyến nghị dự phòng';

  @override
  String get padua_clinical_information => 'Thông tin lâm sàng';

  @override
  String get padua_cancer => 'Ung thư đang hoạt động';

  @override
  String get padua_cancer_desc =>
      'Ung thư chuyển di hoặc điều trị hóa/xạ trong 6 tháng';

  @override
  String get padua_previous_vte => 'Tiền sử VTE';

  @override
  String get padua_previous_vte_desc => 'Đã từng có huyết khối tĩnh mạch';

  @override
  String get padua_reduced_mobility => 'Giảm vận động';

  @override
  String get padua_reduced_mobility_desc => 'Nằm giường ≥3 ngày';

  @override
  String get padua_thrombophilia => 'Rối loạn đông máu';

  @override
  String get padua_thrombophilia_desc => 'Thiếu hụt protein C/S, antithrombin';

  @override
  String get padua_recent_trauma => 'Chấn thương gần đây';

  @override
  String get padua_recent_trauma_desc => 'Chấn thương/phẫu thuật ≤1 tháng';

  @override
  String get padua_elderly => 'Tuổi cao';

  @override
  String get padua_elderly_desc => 'Tuổi ≥70';

  @override
  String get padua_heart_failure => 'Suy tim';

  @override
  String get padua_heart_failure_desc => 'Suy tim cấp hoặc mạn tính';

  @override
  String get padua_respiratory_failure => 'Suy hô hấp';

  @override
  String get padua_respiratory_failure_desc => 'Suy hô hấp cấp hoặc mạn tính';

  @override
  String get padua_acute_infection => 'Nhiễm trùng cấp';

  @override
  String get padua_acute_infection_desc => 'Nhiễm trùng cấp tính';

  @override
  String get padua_rheumatic_disease => 'Bệnh thấp khớp';

  @override
  String get padua_rheumatic_disease_desc => 'Bệnh thấp khớp đang hoạt động';

  @override
  String get padua_ibd_stroke => 'IBD/Đột quỵ';

  @override
  String get padua_ibd_stroke_desc => 'Viêm ruột hoặc đột quỵ cấp';

  @override
  String get padua_acute_mi => 'Nhồi máu cơ tim cấp';

  @override
  String get padua_acute_mi_desc => 'Nhồi máu cơ tim cấp';

  @override
  String get padua_mechanical_prophylaxis_title => 'Dự phòng cơ học';

  @override
  String get padua_pharmacological_prophylaxis_title => 'Dự phòng dược lý';

  @override
  String get padua_graduated_compression => 'Vớ ép';

  @override
  String get padua_intermittent_compression => 'Ép gián đoạn';

  @override
  String get padua_early_mobilization => 'Vận động sớm';

  @override
  String get padua_leg_elevation => 'Nâng chân';

  @override
  String get padua_lmwh => 'LMWH';

  @override
  String get padua_ufh => 'UFH';

  @override
  String get padua_fondaparinux => 'Fondaparinux';

  @override
  String get padua_doac => 'DOAC';

  @override
  String get padua_clinical_info_text =>
      'Padua Prediction Score đánh giá nguy cơ huyết khối tĩnh mạch ở bệnh nhân nội khoa để hướng dẫn dự phòng.';

  @override
  String get padua_reference_title => 'Tài liệu tham khảo';

  @override
  String get padua_reference_text =>
      'Barbar S, et al. A risk assessment model for the identification of hospitalized medical patients at risk for venous thromboembolism. Chest. 2010;137(3):533-40.';

  @override
  String get abcd2_score_title => 'Thang điểm ABCD2';

  @override
  String get abcd2_score => 'Điểm số';

  @override
  String get abcd2_low_risk => 'Nguy cơ thấp';

  @override
  String get abcd2_moderate_risk => 'Nguy cơ trung bình';

  @override
  String get abcd2_high_risk => 'Nguy cơ cao';

  @override
  String get abcd2_stroke_2_days => 'Nguy cơ đột quỵ 2 ngày';

  @override
  String get abcd2_stroke_7_days => 'Nguy cơ đột quỵ 7 ngày';

  @override
  String get abcd2_stroke_90_days => 'Nguy cơ đột quỵ 90 ngày';

  @override
  String get abcd2_urgency_level => 'Mức độ khẩn cấp';

  @override
  String get abcd2_recommendations => 'Khuyến nghị';

  @override
  String get abcd2_urgency_non_urgent => 'Không khẩn cấp';

  @override
  String get abcd2_urgency_priority => 'Ưu tiên';

  @override
  String get abcd2_urgency_emergency => 'Cấp cứu';

  @override
  String get abcd2_recommendation_low => 'Khám ngoại trú trong 1 tuần';

  @override
  String get abcd2_recommendation_moderate => 'Khám chuyên khoa trong 24-48h';

  @override
  String get abcd2_recommendation_high => 'Nhập viện đánh giá ngay';

  @override
  String get abcd2_basic_info => 'Thông tin cơ bản';

  @override
  String get abcd2_age => 'Tuổi';

  @override
  String get abcd2_age_unit => 'năm';

  @override
  String get abcd2_age_help => 'Tuổi của bệnh nhân';

  @override
  String get abcd2_blood_pressure => 'Huyết áp';

  @override
  String get abcd2_bp_unit => 'mmHg';

  @override
  String get abcd2_bp_help => 'Huyết áp tâm thu ≥140 hoặc tâm trương ≥90';

  @override
  String get abcd2_clinical_features => 'Đặc điểm lâm sàng';

  @override
  String get abcd2_other_symptoms => 'Triệu chứng khác';

  @override
  String get abcd2_other_symptoms_desc =>
      'Không phải yếu liệt hay rối loạn ngôn ngữ';

  @override
  String get abcd2_speech_without_weakness =>
      'Rối loạn ngôn ngữ không yếu liệt';

  @override
  String get abcd2_speech_without_weakness_desc =>
      'Rối loạn ngôn ngữ nhưng không có yếu liệt';

  @override
  String get abcd2_unilateral_weakness => 'Yếu liệt một bên';

  @override
  String get abcd2_unilateral_weakness_desc => 'Yếu liệt một bên cơ thể';

  @override
  String get abcd2_duration => 'Thời gian kéo dài';

  @override
  String get abcd2_duration_less_10 => '<10 phút';

  @override
  String get abcd2_duration_less_10_desc => 'Triệu chứng kéo dài <10 phút';

  @override
  String get abcd2_duration_10_59 => '10-59 phút';

  @override
  String get abcd2_duration_10_59_desc => 'Triệu chứng kéo dài 10-59 phút';

  @override
  String get abcd2_duration_60_plus => '≥60 phút';

  @override
  String get abcd2_duration_60_plus_desc => 'Triệu chứng kéo dài ≥60 phút';

  @override
  String get abcd2_diabetes => 'Đái tháo đường';

  @override
  String get abcd2_has_diabetes => 'Có đái tháo đường';

  @override
  String get abcd2_diabetes_desc => 'Có tiền sử đái tháo đường';

  @override
  String get abcd2_risk_stratification => 'Phân tầng nguy cơ';

  @override
  String get abcd2_risk_range_low => '0-3 điểm';

  @override
  String get abcd2_risk_range_moderate => '4-5 điểm';

  @override
  String get abcd2_risk_range_high => '6-7 điểm';

  @override
  String get abcd2_risk_2d_low => '1.0%';

  @override
  String get abcd2_risk_90d_low => '3.1%';

  @override
  String get abcd2_risk_2d_moderate => '4.1%';

  @override
  String get abcd2_risk_90d_moderate => '9.8%';

  @override
  String get abcd2_risk_2d_high => '8.1%';

  @override
  String get abcd2_risk_90d_high => '17.8%';

  @override
  String abcd2_risk_display_format(String risk2d, String risk90d) {
    return '2 ngày: $risk2d, 90 ngày: $risk90d';
  }

  @override
  String get abcd2_clinical_information => 'Thông tin lâm sàng';

  @override
  String get abcd2_clinical_info_text =>
      'ABCD2 Score đánh giá nguy cơ đột quỵ sau cơn thiếu máu não thoáng qua (TIA), giúp phân tầng nguy cơ và hướng dẫn điều trị.';

  @override
  String get abcd2_reference_title => 'Tài liệu tham khảo';

  @override
  String get abcd2_reference_text =>
      'Johnston SC, et al. Validation and refinement of scores to predict very early stroke risk after transient ischemic attack. Lancet. 2007;369(9558):283-292.';

  @override
  String get race_scale_title => 'Thang điểm RACE';

  @override
  String get race_scale => 'Điểm số';

  @override
  String race_lvo_likelihood(String likelihood) {
    return 'Khả năng LVO';
  }

  @override
  String get race_low_lvo => 'LVO thấp';

  @override
  String get race_high_lvo => 'LVO cao';

  @override
  String get race_lvo_probability => 'Xác suất LVO';

  @override
  String get race_time_target => 'Mục tiêu thời gian';

  @override
  String get race_standard_time => 'Thời gian tiêu chuẩn';

  @override
  String get race_door_to_groin => 'Door-to-groin';

  @override
  String get race_recommendations => 'Khuyến nghị';

  @override
  String get race_recommendation_low => 'Đánh giá tiêu chuẩn';

  @override
  String get race_recommendation_high => 'Kích hoạt EVT';

  @override
  String get race_assessment_title => 'Đánh giá RACE';

  @override
  String get race_assessment_subtitle => 'Thang điểm đánh giá LVO';

  @override
  String get race_facial_palsy => 'Liệt mặt';

  @override
  String get race_facial_palsy_instruction => 'Yêu cầu bệnh nhân cười/nhăn mặt';

  @override
  String get race_facial_palsy_none => 'Không có/nhẹ';

  @override
  String get race_facial_palsy_mild => 'Vừa (mặt không đối xứng)';

  @override
  String get race_facial_palsy_severe => 'Nặng (không cử động được)';

  @override
  String get race_arm_motor => 'Vận động cánh tay';

  @override
  String get race_arm_motor_instruction => 'Nâng cánh tay 90° trong 10s';

  @override
  String get race_motor_normal => 'Bình thường';

  @override
  String get race_motor_mild_drift => 'Rơi nhẹ';

  @override
  String get race_motor_severe => 'Rơi ngay/không nâng được';

  @override
  String get race_leg_motor => 'Vận động chân';

  @override
  String get race_leg_motor_instruction => 'Nâng chân 30° trong 5s';

  @override
  String get race_head_eye_deviation => 'Lệch đầu-mắt';

  @override
  String get race_head_eye_instruction => 'Quan sát hướng nhìn';

  @override
  String get race_deviation_none => 'Không lệch';

  @override
  String get race_deviation_present => 'Có lệch';

  @override
  String get race_hemianeglect => 'Hội chứng loại bỏ';

  @override
  String get race_hemianeglect_instruction => 'Kiểm tra nhận thức không gian';

  @override
  String get race_hemianeglect_normal => 'Bình thường';

  @override
  String get race_hemianeglect_present => 'Có hội chứng';

  @override
  String get race_aphasia => 'Rối loạn ngôn ngữ';

  @override
  String get race_aphasia_instruction => 'Kiểm tra khả năng nói';

  @override
  String get race_aphasia_normal => 'Bình thường';

  @override
  String get race_aphasia_mild => 'Nhẹ-vừa';

  @override
  String get race_aphasia_severe => 'Nặng/câm';

  @override
  String get race_risk_stratification => 'Phân tầng nguy cơ';

  @override
  String get race_risk_low_range => '0-4 điểm';

  @override
  String get race_risk_high_range => '5-9 điểm';

  @override
  String get race_risk_low_probability => '14% khả năng LVO';

  @override
  String get race_risk_high_probability => '85% khả năng LVO';

  @override
  String get race_action_routine => 'Đánh giá thường quy';

  @override
  String get race_action_evt => 'Kích hoạt EVT';

  @override
  String get race_emergency_protocol => 'Quy trình cấp cứu';

  @override
  String get race_protocol_stroke_code => 'Kích hoạt Stroke Code';

  @override
  String get race_protocol_stroke_code_desc => 'Báo động đội đột quỵ';

  @override
  String get race_protocol_ct_cta => 'CT/CTA ngay';

  @override
  String get race_protocol_ct_cta_desc => 'Chụp CT não và CTA';

  @override
  String get race_protocol_transfer => 'Chuyển viện';

  @override
  String get race_protocol_transfer_desc => 'Nếu không có khả năng EVT';

  @override
  String get race_protocol_tpa => 'Cân nhắc tPA';

  @override
  String get race_protocol_tpa_desc => 'Tiêu sợi huyết tĩnh mạch';

  @override
  String get race_protocol_time => 'Mục tiêu thời gian';

  @override
  String get race_protocol_time_desc => 'Door-to-groin <90 phút';

  @override
  String get race_clinical_information => 'Thông tin lâm sàng';

  @override
  String get race_clinical_info_text =>
      'RACE Scale nhanh chóng nhận diện tắc mạch lớn (LVO) để kích hoạt liệu pháp lấy huyết khối nội mạch (EVT).';

  @override
  String get race_reference_title => 'Tài liệu tham khảo';

  @override
  String get race_reference_text =>
      'Pérez de la Ossa N, et al. Design and validation of a prehospital stroke scale to predict large arterial occlusion. Stroke. 2014;45(1):87-91.';

  @override
  String get aspect_score_title => 'Thang điểm ASPECT';

  @override
  String get aspect_score => 'Điểm số';

  @override
  String get aspect_prognosis_good => 'Tiên lượng tốt';

  @override
  String get aspect_prognosis_moderate => 'Tiên lượng trung bình';

  @override
  String get aspect_prognosis_poor => 'Tiên lượng kém';

  @override
  String aspect_prognosis_prefix(String prognosis) {
    return 'Tiên lượng';
  }

  @override
  String get aspect_prognosis_label => 'Đánh giá tiên lượng';

  @override
  String get aspect_recommendations => 'Khuyến nghị';

  @override
  String get aspect_prognosis_good_text => 'Kết quả chức năng tốt sau EVT';

  @override
  String get aspect_prognosis_moderate_text => 'Đánh giá từng trường hợp';

  @override
  String get aspect_prognosis_poor_text => 'Nguy cơ cao biến chứng';

  @override
  String get aspect_recommendation_good => 'Thực hiện EVT';

  @override
  String get aspect_recommendation_moderate => 'Cân nhắc EVT';

  @override
  String get aspect_recommendation_poor => 'Thận trọng với EVT';

  @override
  String get aspect_brain_regions => 'Vùng não';

  @override
  String get aspect_cortical_regions => 'Vùng vỏ não';

  @override
  String get aspect_subcortical_regions => 'Vùng dưới vỏ';

  @override
  String get aspect_m1_region => 'M1 (Vỏ não trán)';

  @override
  String get aspect_m2_region => 'M2 (Vỏ não đảo trước)';

  @override
  String get aspect_m3_region => 'M3 (Vỏ não đảo sau)';

  @override
  String get aspect_m4_region => 'M4 (Vỏ não thái dương trước)';

  @override
  String get aspect_m5_region => 'M5 (Vỏ não thái dương sau)';

  @override
  String get aspect_m6_region => 'M6 (Vỏ não đỉnh)';

  @override
  String get aspect_ic_region => 'IC (Bao trong)';

  @override
  String get aspect_l_region => 'L (Nhân thấu kính)';

  @override
  String get aspect_c_region => 'C (Nhân đuôi)';

  @override
  String get aspect_i_region => 'I (Đảo)';

  @override
  String get aspect_abnormal_lesion => 'Tổn thương bất thường';

  @override
  String get aspect_score_interpretation => 'Giải thích điểm số';

  @override
  String get aspect_score_8_10 => '8-10 điểm';

  @override
  String get aspect_score_6_7 => '6-7 điểm';

  @override
  String get aspect_score_0_5 => '0-5 điểm';

  @override
  String get aspect_good_prognosis_evt => 'Tiên lượng tốt cho EVT';

  @override
  String get aspect_consider_evt => 'Cân nhắc EVT';

  @override
  String get aspect_high_risk => 'Nguy cơ cao';

  @override
  String get aspect_perform_evt => 'Thực hiện EVT';

  @override
  String get aspect_assess_benefit_risk => 'Đánh giá lợi ích/nguy cơ';

  @override
  String get aspect_caution_evt => 'Thận trọng với EVT';

  @override
  String get aspect_clinical_guidelines => 'Hướng dẫn lâm sàng';

  @override
  String get aspect_evt_recommended => 'Khuyến nghị EVT';

  @override
  String get aspect_evt_consider => 'Cân nhắc EVT';

  @override
  String get aspect_evt_caution => 'Thận trọng EVT';

  @override
  String get aspect_good_prognosis_evt_desc => 'Tiên lượng chức năng tốt';

  @override
  String get aspect_perform_time_window => 'Thực hiện trong khung thời gian';

  @override
  String get aspect_low_hemorrhage_risk => 'Nguy cơ xuất huyết thấp';

  @override
  String get aspect_good_functional_outcome => 'Kết quả chức năng tốt';

  @override
  String get aspect_assess_case_by_case => 'Đánh giá từng trường hợp';

  @override
  String get aspect_consider_age_time => 'Cân nhắc tuổi và thời gian';

  @override
  String get aspect_discuss_family => 'Thảo luận với gia đình';

  @override
  String get aspect_close_monitoring => 'Theo dõi chặt chẽ';

  @override
  String get aspect_high_complication_risk => 'Nguy cơ biến chứng cao';

  @override
  String get aspect_prioritize_medical => 'Ưu tiên điều trị nội khoa';

  @override
  String get aspect_special_consideration => 'Cân nhắc đặc biệt';

  @override
  String get aspect_supportive_care => 'Chăm sóc hỗ trợ';

  @override
  String get aspect_clinical_information => 'Thông tin lâm sàng';

  @override
  String get curb65_title => 'Thang điểm CURB-65';

  @override
  String get curb65_score => 'Điểm CURB-65';

  @override
  String get curb65_very_low_risk => 'Nguy cơ rất thấp';

  @override
  String get curb65_low_risk => 'Nguy cơ thấp';

  @override
  String get curb65_moderate_risk => 'Nguy cơ trung bình';

  @override
  String get curb65_high_risk => 'Nguy cơ cao';

  @override
  String get curb65_very_high_risk => 'Nguy cơ rất cao';

  @override
  String curb65_mortality_rate(String rate) {
    return 'Tỷ lệ tử vong 30 ngày';
  }

  @override
  String get curb65_outpatient_treatment => 'Điều trị ngoại trú';

  @override
  String get curb65_consider_hospital => 'Cân nhắc nhập viện';

  @override
  String get curb65_hospital_icu => 'Nhập viện/ICU';

  @override
  String get curb65_confusion => 'Lú lẫn';

  @override
  String get curb65_confusion_subtitle => 'Rối loạn ý thức';

  @override
  String get curb65_no_confusion => 'Tỉnh táo';

  @override
  String get curb65_no_confusion_desc => 'Định hướng tốt';

  @override
  String get curb65_has_confusion => 'Lú lẫn';

  @override
  String get curb65_has_confusion_desc => 'Rối loạn ý thức mới xuất hiện';

  @override
  String get curb65_bun => 'Ure máu (BUN)';

  @override
  String curb65_bun_label(String unit) {
    return 'BUN (Blood Urea Nitrogen)';
  }

  @override
  String get curb65_bun_unit => 'Đơn vị BUN';

  @override
  String get curb65_bun_scoring => 'Tính điểm BUN';

  @override
  String get curb65_respiratory_rate => 'Nhịp thở ≥30/phút';

  @override
  String get curb65_systolic_bp => 'Huyết áp tâm thu';

  @override
  String get curb65_age => 'Tuổi ≥65';

  @override
  String get curb65_enter_value => 'Nhập giá trị';

  @override
  String curb65_score_label(int score) {
    return 'Điểm số CURB-65';
  }

  @override
  String get curb65_reference_title => 'Tài liệu tham khảo';

  @override
  String get curb65_reference_text =>
      'Lim WS, et al. Defining community acquired pneumonia severity on presentation to hospital. Thorax. 2003;58(5):377-82.';

  @override
  String get curb65_mortality_very_low => '<1%';

  @override
  String get curb65_mortality_low => '1-3%';

  @override
  String get curb65_mortality_moderate => '3-15%';

  @override
  String get curb65_mortality_high => '15-30%';

  @override
  String get curb65_mortality_very_high => '>30%';

  @override
  String get curb65_clinical_information => 'Thông tin lâm sàng';

  @override
  String get curb65_clinical_info_content =>
      'CURB-65 đánh giá mức độ nặng của viêm phổi cộng đồng và hướng dẫn quyết định nơi điều trị.';

  @override
  String get curb65_risk_stratification => 'Phân tầng nguy cơ';

  @override
  String get curb65_recommendations => 'Khuyến nghị điều trị';

  @override
  String get curb65_treatment_setting => 'Nơi điều trị';

  @override
  String get curb65_outpatient => 'Ngoại trú';

  @override
  String get curb65_hospital_observation => 'Nhập viện theo dõi';

  @override
  String get curb65_hospital_icu_admission => 'Nhập viện/Cân nhắc ICU';

  @override
  String get curb65_assessment_parameters => 'Thông số đánh giá';

  @override
  String get curb65_scoring_criteria => 'Tiêu chí tính điểm';

  @override
  String get aspect_clinical_info_text =>
      'ASPECT Score đánh giá mức độ nhồi máu não để dự đoán kết quả và hướng dẫn quyết định liệu pháp lấy huyết khối nội mạch.';

  @override
  String get aspect_reference_title => 'Tài liệu tham khảo';

  @override
  String get aspect_reference_text =>
      'Barber PA, et al. Validity and reliability of a quantitative computed tomography score in predicting outcome of hyperacute stroke. Lancet. 2000;355(9216):1670-4.';

  @override
  String get aspect_guideline_high_title => 'ASPECT 8-10 điểm';

  @override
  String get aspect_guideline_high_good_prognosis =>
      '• Tiên lượng chức năng tốt';

  @override
  String get aspect_guideline_high_perform_time =>
      '• Thực hiện EVT trong khung thời gian';

  @override
  String get aspect_guideline_high_low_risk => '• Nguy cơ xuất huyết thấp';

  @override
  String get aspect_guideline_high_good_outcome => '• Kết quả lâm sàng tốt';

  @override
  String get aspect_guideline_medium_title => 'ASPECT 6-7 điểm';

  @override
  String get aspect_guideline_medium_case_by_case =>
      '• Đánh giá từng trường hợp cụ thể';

  @override
  String get aspect_guideline_medium_consider_age =>
      '• Cân nhắc tuổi và thời gian';

  @override
  String get aspect_guideline_medium_discuss_family =>
      '• Thảo luận với gia đình';

  @override
  String get aspect_guideline_medium_close_monitoring =>
      '• Theo dõi chặt chẽ sau can thiệp';

  @override
  String get aspect_guideline_low_title => 'ASPECT 0-5 điểm';

  @override
  String get aspect_guideline_low_high_risk => '• Nguy cơ biến chứng cao';

  @override
  String get aspect_guideline_low_consider_carefully => '• Cân nhắc cẩn thận';

  @override
  String get aspect_guideline_low_discuss_risks =>
      '• Thảo luận nguy cơ với gia đình';

  @override
  String get aspect_guideline_low_individual_decision =>
      '• Quyết định cá thể hóa';

  @override
  String get aspect_lesion_detected => 'Phát hiện tổn thương';

  @override
  String get aspect_score_explanation => 'Giải thích điểm';

  @override
  String get aspect_score_range_8_10 => '8-10 điểm';

  @override
  String get aspect_score_level_good => 'Mức độ tốt';

  @override
  String get aspect_score_prognosis_good_evt => 'Tiên lượng tốt cho EVT';

  @override
  String get aspect_score_action_perform_evt => 'Thực hiện EVT';

  @override
  String get aspect_score_range_6_7 => '6-7 điểm';

  @override
  String get aspect_score_level_moderate => 'Mức độ trung bình';

  @override
  String get aspect_score_prognosis_consider_evt => 'Cân nhắc EVT';

  @override
  String get aspect_score_action_assess_benefit => 'Đánh giá lợi ích-nguy cơ';

  @override
  String get aspect_score_range_0_5 => '0-5 điểm';

  @override
  String get aspect_score_level_poor => 'Mức độ kém';

  @override
  String get aspect_score_prognosis_high_risk => 'Nguy cơ cao';

  @override
  String get aspect_score_action_caution_evt => 'Thận trọng với EVT';

  @override
  String get modified_sgarbossa_title => 'Tiêu chí Sgarbossa cải tiến';

  @override
  String get modified_sgarbossa_short => 'Sgarbossa';

  @override
  String get sgarbossa_points => 'điểm';

  @override
  String get sgarbossa_no_criteria => 'Không đáp ứng tiêu chí';

  @override
  String get sgarbossa_suspected_stemi => 'Nghi ngờ STEMI';

  @override
  String get sgarbossa_likely_stemi => 'Có khả năng STEMI';

  @override
  String get sgarbossa_action_exclude => 'Loại trừ STEMI';

  @override
  String get sgarbossa_action_evaluate => 'Đánh giá thêm';

  @override
  String get sgarbossa_action_urgent => 'Can thiệp khẩn cấp';

  @override
  String get sgarbossa_recommendation_exclude => 'Không cần can thiệp khẩn cấp';

  @override
  String get sgarbossa_recommendation_evaluate =>
      'Cần đánh giá lâm sàng và xét nghiệm thêm';

  @override
  String get sgarbossa_recommendation_urgent => 'Can thiệp mạch vành khẩn cấp';

  @override
  String get sgarbossa_criteria_title => 'Tiêu chí Sgarbossa';

  @override
  String get sgarbossa_criteria_description => 'Chẩn đoán STEMI khi có LBBB';

  @override
  String get sgarbossa_concordant_elevation_title =>
      'ST chênh lên cùng hướng ≥1mm';

  @override
  String get sgarbossa_concordant_elevation_desc =>
      'V1, V2, V3 hoặc aVL, I, V6';

  @override
  String get sgarbossa_concordant_depression_title =>
      'ST chênh xuống cùng hướng ≥1mm V1-V3';

  @override
  String get sgarbossa_concordant_depression_desc =>
      'ST chênh xuống ở V1, V2, V3';

  @override
  String get sgarbossa_excessive_discordant_title =>
      'ST chênh lên ngược hướng ≥25% độ sâu S';

  @override
  String get sgarbossa_excessive_discordant_desc =>
      'Tỷ lệ ST/S ≥0.25 ở chuyển đạo có S sâu';

  @override
  String sgarbossa_active_criteria(int count) {
    return 'Tiêu chí hiện tại';
  }

  @override
  String get sgarbossa_interpretation_guide => 'Hướng dẫn giải thích';

  @override
  String get sgarbossa_interpretation_0 =>
      '0 điểm: Không đáp ứng tiêu chí STEMI';

  @override
  String get sgarbossa_interpretation_1_2 =>
      '1-2 điểm: Nghi ngờ STEMI, cần đánh giá thêm';

  @override
  String get sgarbossa_interpretation_3_plus =>
      '≥3 điểm: Có khả năng STEMI, can thiệp khẩn cấp';

  @override
  String get sgarbossa_clinical_info_title => 'Thông tin lâm sàng';

  @override
  String get sgarbossa_clinical_info_text =>
      'Tiêu chí Sgarbossa cải tiến giúp chẩn đoán STEMI ở bệnh nhân có blốc nhánh trái, với độ nhạy và độ đặc hiệu cao.';

  @override
  String get sgarbossa_reference_title => 'Tài liệu tham khảo';

  @override
  String get sgarbossa_reference_text =>
      'Sgarbossa EB, et al. Electrocardiographic diagnosis of evolving acute myocardial infarction in the presence of left bundle-branch block. N Engl J Med. 1996;334(8):481-7.';

  @override
  String get sgarbossa_action_label => 'Hành động';

  @override
  String get sgarbossa_recommendation_label => 'Khuyến nghị';

  @override
  String get ranson_title => 'Tiêu chí Ranson';

  @override
  String get ranson_score_title => 'Điểm Ranson';

  @override
  String ranson_mortality_rate(String rate) {
    return 'Tỷ lệ tử vong';
  }

  @override
  String get ranson_severity_mild => 'Nhẹ';

  @override
  String get ranson_severity_moderate => 'Trung bình';

  @override
  String get ranson_severity_severe => 'Nặng';

  @override
  String get ranson_management_mild => 'Điều trị ngoại trú';

  @override
  String get ranson_management_moderate => 'Nhập viện theo dõi';

  @override
  String get ranson_management_severe => 'ICU và can thiệp';

  @override
  String get ranson_admission_criteria => 'Tiêu chí nhập viện';

  @override
  String get ranson_48hour_criteria => 'Tiêu chí 48 giờ';

  @override
  String get ranson_age => 'Tuổi >55';

  @override
  String get ranson_wbc => 'BC >16,000';

  @override
  String get ranson_glucose => 'Glucose >200mg/dL';

  @override
  String get ranson_ldh => 'LDH >350 IU/L';

  @override
  String get ranson_ast => 'AST >250 IU/L';

  @override
  String get ranson_hematocrit_drop => 'Giảm Hematocrit >10%';

  @override
  String get ranson_bun_rise => 'Tăng BUN >5mg/dL';

  @override
  String get ranson_calcium_drop => 'Ca2+ <8mg/dL';

  @override
  String get ranson_po2_drop => 'PaO2 <60mmHg';

  @override
  String get ranson_base_deficit => 'Base deficit >4mEq/L';

  @override
  String get ranson_fluid_sequestration => 'Mất dịch >6L';

  @override
  String get ranson_enter_value => 'Nhập giá trị';

  @override
  String ranson_points(int points) {
    return 'điểm';
  }

  @override
  String get ranson_unit => 'đơn vị';

  @override
  String get ranson_reference_title => 'Tài liệu tham khảo';

  @override
  String get ranson_reference_text =>
      'Ranson JH, et al. Prognostic signs and the role of operative management in acute pancreatitis. Surg Gynecol Obstet. 1974;139(1):69-81.';

  @override
  String get psi_title => 'Chỉ số PSI';

  @override
  String get psi_full_name => 'Pneumonia Severity Index';

  @override
  String get psi_risk_very_low => 'Rất thấp';

  @override
  String get psi_risk_low => 'Thấp';

  @override
  String get psi_risk_moderate => 'Trung bình';

  @override
  String get psi_risk_high => 'Cao';

  @override
  String get psi_risk_very_high => 'Rất cao';

  @override
  String psi_class(int classNumber) {
    return 'Lớp';
  }

  @override
  String psi_mortality_rate(String rate) {
    return 'Tỷ lệ tử vong';
  }

  @override
  String get psi_outpatient_treatment => 'Điều trị ngoại trú';

  @override
  String get psi_outpatient_or_short => 'Ngoại trú hoặc nằm ngắn ngày';

  @override
  String get psi_inpatient_required => 'Cần nhập viện';

  @override
  String get psi_inpatient_consider_icu => 'Nhập viện, cân nhắc ICU';

  @override
  String get psi_icu_no_need => 'Không cần ICU';

  @override
  String get psi_icu_not_needed => 'Thường không cần ICU';

  @override
  String get psi_icu_consider => 'Cân nhắc ICU';

  @override
  String get psi_icu_recommended => 'Khuyến nghị ICU';

  @override
  String get psi_basic_info => 'Thông tin cơ bản';

  @override
  String get psi_comorbidities => 'Bệnh kèm theo';

  @override
  String get psi_physical_exam => 'Khám thể lý';

  @override
  String get psi_laboratory => 'Xét nghiệm';

  @override
  String get psi_gender => 'Giới tính';

  @override
  String get psi_male => 'Nam';

  @override
  String get psi_female => 'Nữ';

  @override
  String get psi_age_label => 'Tuổi';

  @override
  String get psi_nursing_home => 'Viện dưỡng lão';

  @override
  String get psi_neoplastic_disease => 'Bệnh ung thư';

  @override
  String get psi_liver_disease => 'Bệnh gan';

  @override
  String get psi_congestive_heart_failure => 'Suy tim sung huyết';

  @override
  String get psi_cerebrovascular_disease => 'Bệnh mạch máu não';

  @override
  String get psi_renal_disease => 'Bệnh thận';

  @override
  String get psi_altered_mental_status => 'Rối loạn ý thức';

  @override
  String get psi_respiratory_rate => 'Nhịp thở';

  @override
  String get psi_systolic_bp => 'HA tâm thu';

  @override
  String get psi_temperature => 'Nhiệt độ';

  @override
  String get psi_pulse => 'Mạch';

  @override
  String get psi_respiratory_rate_threshold => '≥30/phút';

  @override
  String get psi_systolic_bp_threshold => '<90mmHg';

  @override
  String get psi_temperature_threshold => '<35°C hoặc ≥40°C';

  @override
  String get psi_pulse_threshold => '≥125/phút';

  @override
  String get psi_arterial_ph => 'pH động mạch <7.35';

  @override
  String get psi_bun => 'BUN';

  @override
  String get psi_bun_threshold => '≥30mg/dL';

  @override
  String get psi_sodium => 'Natri <130mEq/L';

  @override
  String get psi_glucose => 'Glucose';

  @override
  String get psi_glucose_threshold => '≥250mg/dL';

  @override
  String get psi_hematocrit => 'Hematocrit <30%';

  @override
  String get psi_pao2 => 'PaO2 <60mmHg';

  @override
  String get psi_pleural_effusion => 'Tràn dịch màng phổi';

  @override
  String get psi_unit_label => 'Đơn vị';

  @override
  String psi_score_label(int score) {
    return 'Điểm số';
  }

  @override
  String get psi_icu_criteria_title => 'Tiêu chí ICU';

  @override
  String get psi_icu_criteria_content =>
      'Ngoài PSI, cân nhắc ICU khi có sốc nhiễm trùng, suy hô hấp cần thở máy, hoặc suy đa tạng.';

  @override
  String psi_icu_recommendation(String recommendation) {
    return 'Khuyến nghị ICU';
  }

  @override
  String get psi_reference_title => 'Tài liệu tham khảo';

  @override
  String get psi_reference_text =>
      'Fine MJ, et al. A prediction rule to identify low-risk patients with community-acquired pneumonia. N Engl J Med. 1997;336(4):243-50.';

  @override
  String get unit => 'Đơn vị';

  @override
  String get value => 'Giá trị';

  @override
  String get asa_title => 'Phân loại ASA';

  @override
  String get asa_not_classified => 'Chưa phân loại';

  @override
  String get asa_select_classification => 'Chọn phân loại ASA';

  @override
  String get asa_class_1_title => 'ASA I';

  @override
  String get asa_class_1_description => 'Bệnh nhân khỏe mạnh bình thường';

  @override
  String get asa_class_1_examples => 'Không có bệnh toàn thân';

  @override
  String get asa_class_2_title => 'ASA II';

  @override
  String get asa_class_2_description => 'Bệnh nhân có bệnh toàn thân nhẹ';

  @override
  String get asa_class_2_examples =>
      'THA nhẹ, ĐTĐ không biến chứng, béo phì, hút thuốc';

  @override
  String get asa_class_3_title => 'ASA III';

  @override
  String get asa_class_3_description => 'Bệnh nhân có bệnh toàn thân nặng';

  @override
  String get asa_class_3_examples =>
      'ĐTĐ có biến chứng, THA nặng, COPD, suy tim ổn định';

  @override
  String get asa_class_4_title => 'ASA IV';

  @override
  String get asa_class_4_description => 'Bệnh toàn thân nặng đe dọa tính mạng';

  @override
  String get asa_class_4_examples =>
      'Suy tim nặng, suy thận nặng, nhồi máu cơ tim gần đây';

  @override
  String get asa_class_5_title => 'ASA V';

  @override
  String get asa_class_5_description => 'Bệnh nhân hấp hối';

  @override
  String get asa_class_5_examples =>
      'Vỡ phình động mạch chủ, chấn thương đa tạng nặng';

  @override
  String get asa_class_6_title => 'ASA VI';

  @override
  String get asa_class_6_description => 'Não chết được khai thác tạng';

  @override
  String get asa_class_6_examples => 'Bệnh nhân não chết hiến tạng';

  @override
  String get asa_perioperative_mortality => 'Tỷ lệ tử vong phẫu thuật';

  @override
  String get asa_anesthesia_risk => 'Nguy cơ gây mê';

  @override
  String get asa_risk_low => 'Thấp';

  @override
  String get asa_risk_low_moderate => 'Thấp-Trung bình';

  @override
  String get asa_risk_moderate_high => 'Trung bình-Cao';

  @override
  String get asa_risk_high => 'Cao';

  @override
  String get asa_risk_very_high => 'Rất cao';

  @override
  String get asa_risk_not_applicable => 'Không áp dụng';

  @override
  String get asa_recommendation_class_1 =>
      'Phẫu thuật an toàn, nguy cơ tối thiểu';

  @override
  String get asa_recommendation_class_2 => 'Chuẩn bị cẩn thận, nguy cơ thấp';

  @override
  String get asa_recommendation_class_3 => 'Tối ưu hóa trước phẫu thuật';

  @override
  String get asa_recommendation_class_4 => 'Cân nhắc nguy cơ/lợi ích cẩn thận';

  @override
  String get asa_recommendation_class_5 => 'Chỉ phẫu thuật cứu sống';

  @override
  String get asa_recommendation_class_6 => 'Chỉ để hiến tạng';

  @override
  String get asa_classifications => 'Phân loại ASA';

  @override
  String get asa_important_notes => 'Lưu ý quan trọng';

  @override
  String get asa_notes_text =>
      'Phân loại ASA đánh giá tình trạng sức khỏe trước phẫu thuật, không dự đoán nguy cơ cụ thể. Thêm \'E\' cho phẫu thuật cấp cứu.';

  @override
  String get asa_reference_title => 'Tài liệu tham khảo';

  @override
  String get asa_reference_text =>
      'American Society of Anesthesiologists. ASA Physical Status Classification System. Updated October 15, 2014.';

  @override
  String get rcri_title => 'Chỉ số RCRI';

  @override
  String get rcri_subtitle => 'Revised Cardiac Risk Index';

  @override
  String get rcri_risk_very_low => 'Rất thấp';

  @override
  String get rcri_risk_low => 'Thấp';

  @override
  String get rcri_risk_moderate => 'Trung bình';

  @override
  String get rcri_risk_high => 'Cao';

  @override
  String get rcri_cardiac_event_risk => 'Nguy cơ biến cố tim mạch';

  @override
  String get rcri_perioperative_management => 'Quản lý phẫu thuật';

  @override
  String get rcri_recommendations => 'Khuyến nghị';

  @override
  String get rcri_management_standard => 'Quản lý tiêu chuẩn';

  @override
  String get rcri_management_monitoring => 'Theo dõi tăng cường';

  @override
  String get rcri_management_intensive => 'Quản lý tích cực';

  @override
  String get rcri_management_invasive => 'Can thiệp xâm lấn';

  @override
  String get rcri_recommendation_0 => 'Không cần đánh giá tim mạch thêm';

  @override
  String get rcri_recommendation_1 => 'Cân nhắc đánh giá tim mạch';

  @override
  String get rcri_recommendation_2 => 'Khuyến nghị đánh giá tim mạch';

  @override
  String get rcri_recommendation_3 => 'Bắt buộc đánh giá tim mạch';

  @override
  String get rcri_risk_factors_title => 'Yếu tố nguy cơ';

  @override
  String rcri_current_risk_factors(int count) {
    return 'Yếu tố nguy cơ hiện tại';
  }

  @override
  String get rcri_high_risk_surgery_title => 'Phẫu thuật nguy cơ cao';

  @override
  String get rcri_risk_stratification_title => 'Phân tầng nguy cơ';

  @override
  String get rcri_clinical_info_title => 'Thông tin lâm sàng';

  @override
  String get rcri_surgery_examples => 'Ví dụ phẫu thuật';

  @override
  String get rcri_surgery_aortic => 'Phẫu thuật động mạch chủ';

  @override
  String get rcri_surgery_peripheral => 'Phẫu thuật mạch máu ngoại vi';

  @override
  String get rcri_surgery_abdominal => 'Phẫu thuật bụng lớn';

  @override
  String get rcri_surgery_thoracic => 'Phẫu thuật lồng ngực';

  @override
  String get rcri_surgery_renal => 'Phẫu thuật thận';

  @override
  String get rcri_surgery_hepatic => 'Phẫu thuật gan';

  @override
  String get rcri_surgery_head_neck => 'Phẫu thuật đầu cổ lớn';

  @override
  String get rcri_surgery_orthopedic => 'Phẫu thuật xương khớp lớn';

  @override
  String get rcri_cardiac_event_risk_label => 'Nguy cơ biến cố tim';

  @override
  String get rcri_perioperative_mgmt_label => 'Quản lý phẫu thuật';

  @override
  String get rcri_clinical_info_text =>
      'RCRI đánh giá nguy cơ biến cố tim mạch trong phẫu thuật không tim, giúp hướng dẫn đánh giá và quản lý trước phẫu thuật.';

  @override
  String get rcri_references => 'Tài liệu tham khảo';

  @override
  String get rcri_risk_0_title => '0 yếu tố nguy cơ';

  @override
  String get rcri_risk_0_desc => 'Nguy cơ rất thấp (0.4%)';

  @override
  String get rcri_risk_1_title => '1 yếu tố nguy cơ';

  @override
  String get rcri_risk_1_desc => 'Nguy cơ thấp (0.9%)';

  @override
  String get rcri_risk_2_title => '2 yếu tố nguy cơ';

  @override
  String get rcri_risk_2_desc => 'Nguy cơ trung bình (7%)';

  @override
  String get rcri_risk_3_title => '≥3 yếu tố nguy cơ';

  @override
  String get rcri_risk_3_desc => 'Nguy cơ cao (11%)';

  @override
  String get rcri_ihd_title => 'Bệnh tim thiếu máu cục bộ';

  @override
  String get rcri_ihd_description =>
      'Tiền sử nhồi máu cơ tim, test gắng sức dương tính, đau thắt ngực, dùng nitrate';

  @override
  String get rcri_chf_title => 'Suy tim sung huyết';

  @override
  String get rcri_chf_description =>
      'Tiền sử suy tim, phù phổi, khó thở khi gắng sức, S3 thính chẩn';

  @override
  String get rcri_cvd_title => 'Bệnh mạch máu não';

  @override
  String get rcri_cvd_description =>
      'Tiền sử đột quỵ hoặc thiếu máu não thoáng qua';

  @override
  String get rcri_dm_title => 'Đái tháo đường cần insulin';

  @override
  String get rcri_dm_description => 'Đái tháo đường được điều trị bằng insulin';

  @override
  String get rcri_renal_title => 'Suy thận';

  @override
  String get rcri_renal_description =>
      'Creatinine huyết thanh >2 mg/dL trước phẫu thuật';

  @override
  String get rcri_surgery_title => 'Phẫu thuật nguy cơ cao';

  @override
  String get rcri_surgery_description =>
      'Phẫu thuật nội soi, mạch máu, hoặc phẫu thuật lớn';

  @override
  String rcri_active_factors(int count) {
    return 'Yếu tố hoạt động';
  }

  @override
  String get rcri_high_risk_surgeries => 'Phẫu thuật nguy cơ cao';

  @override
  String get rcri_surgery_1 => 'Phẫu thuật động mạch chủ bụng';

  @override
  String get rcri_surgery_2 => 'Phẫu thuật mạch máu ngoại vi';

  @override
  String get rcri_surgery_3 => 'Phẫu thuật bụng lớn';

  @override
  String get rcri_surgery_4 => 'Phẫu thuật lồng ngực';

  @override
  String get rcri_surgery_5 => 'Phẫu thuật thận';

  @override
  String get rcri_surgery_6 => 'Phẫu thuật gan';

  @override
  String get rcri_surgery_7 => 'Phẫu thuật đầu cổ';

  @override
  String get rcri_surgery_8 => 'Phẫu thuật xương khớp lớn';

  @override
  String get rcri_risk_stratification => 'Phân tầng nguy cơ';

  @override
  String get rcri_score_0_action => 'Không cần đánh giá thêm';

  @override
  String get rcri_score_1_action => 'Cân nhắc đánh giá';

  @override
  String get rcri_score_2_action => 'Khuyến nghị đánh giá';

  @override
  String get rcri_score_3_action => 'Bắt buộc đánh giá';

  @override
  String get rcri_clinical_info => 'Thông tin lâm sàng';

  @override
  String get rcri_clinical_text =>
      'RCRI là công cụ được xác thực rộng rãi để đánh giá nguy cơ biến cố tim mạch perioperative.';

  @override
  String get rcri_reference_title => 'Tài liệu tham khảo';

  @override
  String get rcri_reference_text =>
      'Lee TH, et al. Derivation and prospective validation of a simple index for prediction of cardiac risk of major noncardiac surgery. Circulation. 1999;100(10):1043-9.';

  @override
  String get surgical_apgar_title => 'Thang điểm Surgical Apgar';

  @override
  String get surgical_apgar_subtitle => 'Đánh giá kết quả phẫu thuật';

  @override
  String get surgical_apgar_risk_low => 'Nguy cơ thấp';

  @override
  String get surgical_apgar_risk_moderate_low => 'Nguy cơ thấp-trung bình';

  @override
  String get surgical_apgar_risk_moderate_high => 'Nguy cơ trung bình-cao';

  @override
  String get surgical_apgar_risk_high => 'Nguy cơ cao';

  @override
  String get surgical_apgar_risk_very_high => 'Nguy cơ rất cao';

  @override
  String get surgical_apgar_heart_rate_label => 'Nhịp tim thấp nhất';

  @override
  String get surgical_apgar_heart_rate_unit => 'lần/phút';

  @override
  String get surgical_apgar_heart_rate_helper =>
      'Nhịp tim thấp nhất trong phẫu thuật';

  @override
  String get surgical_apgar_blood_pressure_label => 'MAP thấp nhất';

  @override
  String get surgical_apgar_blood_pressure_unit => 'mmHg';

  @override
  String get surgical_apgar_blood_pressure_helper =>
      'Huyết áp động mạch trung bình thấp nhất';

  @override
  String get surgical_apgar_blood_loss_label => 'Mất máu ước tính';

  @override
  String get surgical_apgar_blood_loss_unit => 'mL';

  @override
  String get surgical_apgar_blood_loss_helper =>
      'Tổng lượng máu mất trong phẫu thuật';

  @override
  String get surgical_apgar_parameters_title => 'Thông số phẫu thuật';

  @override
  String get surgical_apgar_score_breakdown_title => 'Phân tích điểm số';

  @override
  String get surgical_apgar_risk_stratification_title => 'Phân tầng nguy cơ';

  @override
  String get surgical_apgar_clinical_guidelines_title => 'Hướng dẫn lâm sàng';

  @override
  String get surgical_apgar_clinical_info_title => 'Thông tin lâm sàng';

  @override
  String get surgical_apgar_complication_risk => 'Nguy cơ biến chứng';

  @override
  String get surgical_apgar_mortality_risk => 'Nguy cơ tử vong';

  @override
  String get surgical_apgar_recommendations => 'Khuyến nghị';

  @override
  String get surgical_apgar_recommendation_low =>
      'Chăm sóc tiêu chuẩn sau phẫu thuật';

  @override
  String get surgical_apgar_recommendation_moderate_low =>
      'Theo dõi tăng cường';

  @override
  String get surgical_apgar_recommendation_moderate_high => 'Chăm sóc tích cực';

  @override
  String get surgical_apgar_recommendation_high => 'Quản lý đặc biệt';

  @override
  String get surgical_apgar_recommendation_very_high =>
      'Chăm sóc tích cực tối đa';

  @override
  String get surgical_apgar_heart_rate_scoring => 'Tính điểm nhịp tim';

  @override
  String get surgical_apgar_map_scoring => 'Tính điểm MAP';

  @override
  String get surgical_apgar_blood_loss_scoring => 'Tính điểm mất máu';

  @override
  String get surgical_apgar_score_points => 'điểm';

  @override
  String get surgical_apgar_hr_criteria_1 => '>85: 4 điểm';

  @override
  String get surgical_apgar_hr_criteria_2 => '76-85: 3 điểm';

  @override
  String get surgical_apgar_hr_criteria_3 => '66-75: 2 điểm';

  @override
  String get surgical_apgar_map_criteria_1 => '>60: 4 điểm';

  @override
  String get surgical_apgar_map_criteria_2 => '50-60: 3 điểm';

  @override
  String get surgical_apgar_map_criteria_3 => '40-49: 2 điểm';

  @override
  String get surgical_apgar_bl_criteria_1 => '<100mL: 4 điểm';

  @override
  String get surgical_apgar_bl_criteria_2 => '100-600mL: 3 điểm';

  @override
  String get surgical_apgar_bl_criteria_3 => '601-1000mL: 2 điểm';

  @override
  String get surgical_apgar_score_6_7 => '6-7 điểm: Nguy cơ thấp';

  @override
  String get surgical_apgar_score_4_5 => '4-5 điểm: Nguy cơ trung bình';

  @override
  String get surgical_apgar_score_2_3 => '2-3 điểm: Nguy cơ cao';

  @override
  String get surgical_apgar_score_0_1 => '0-1 điểm: Nguy cơ rất cao';

  @override
  String get surgical_apgar_guideline_low_title => 'Điểm cao (6-7)';

  @override
  String get surgical_apgar_guideline_moderate_title => 'Điểm trung bình (4-5)';

  @override
  String get surgical_apgar_guideline_high_title => 'Điểm thấp (0-3)';

  @override
  String get surgical_apgar_guideline_low_1 =>
      '• Chăm sóc sau phẫu thuật tiêu chuẩn';

  @override
  String get surgical_apgar_guideline_low_2 =>
      '• Theo dõi dấu hiệu sinh tồn thường quy';

  @override
  String get surgical_apgar_guideline_low_3 => '• Vận động sớm';

  @override
  String get surgical_apgar_guideline_low_4 => '• Xuất viện theo kế hoạch';

  @override
  String get surgical_apgar_guideline_moderate_1 =>
      '• Theo dõi tăng cường 24-48h';

  @override
  String get surgical_apgar_guideline_moderate_2 =>
      '• Kiểm tra xét nghiệm thêm';

  @override
  String get surgical_apgar_guideline_moderate_3 =>
      '• Cân nhắc chăm sóc đặc biệt';

  @override
  String get surgical_apgar_guideline_moderate_4 => '• Theo dõi biến chứng';

  @override
  String get surgical_apgar_guideline_high_1 => '• Chăm sóc tích cực';

  @override
  String get surgical_apgar_guideline_high_2 => '• Cân nhắc ICU';

  @override
  String get surgical_apgar_guideline_high_3 =>
      '• Theo dõi chặt chẽ biến chứng';

  @override
  String get surgical_apgar_guideline_high_4 => '• Can thiệp tích cực nếu cần';

  @override
  String get surgical_apgar_management_standard => 'Quản lý tiêu chuẩn';

  @override
  String get surgical_apgar_management_close => 'Theo dõi chặt chẽ';

  @override
  String get surgical_apgar_management_active => 'Chăm sóc tích cực';

  @override
  String get surgical_apgar_management_special => 'Quản lý đặc biệt';

  @override
  String get surgical_apgar_management_intensive => 'Chăm sóc tích cực tối đa';

  @override
  String get surgical_apgar_clinical_text =>
      'Surgical Apgar Score dự đoán nguy cơ biến chứng và tử vong sau phẫu thuật dựa trên các thông số trong mổ.';

  @override
  String get surgical_apgar_reference_title => 'Tài liệu tham khảo';

  @override
  String get surgical_apgar_reference_text =>
      'Gawande AA, et al. An Apgar score for surgery. J Am Coll Surg. 2007;204(2):201-8.';

  @override
  String get preop_mortality_title => 'Dự đoán tử vong phẫu thuật';

  @override
  String get preop_mortality_subtitle => 'Preoperative Mortality Prediction';

  @override
  String get preop_mortality_risk_title => 'Nguy cơ tử vong';

  @override
  String get preop_mortality_risk_very_low => 'Rất thấp (<0.5%)';

  @override
  String get preop_mortality_risk_low => 'Thấp (0.5-1.5%)';

  @override
  String get preop_mortality_risk_moderate => 'Trung bình (1.5-5%)';

  @override
  String get preop_mortality_risk_high => 'Cao (5-15%)';

  @override
  String get preop_mortality_risk_very_high => 'Rất cao (>15%)';

  @override
  String get preop_mortality_recommendations => 'Khuyến nghị';

  @override
  String get preop_mortality_recommendation_very_low => 'Phẫu thuật an toàn';

  @override
  String get preop_mortality_recommendation_low => 'Chuẩn bị tiêu chuẩn';

  @override
  String get preop_mortality_recommendation_moderate =>
      'Tối ưu hóa trước phẫu thuật';

  @override
  String get preop_mortality_recommendation_high => 'Cân nhắc cẩn thận';

  @override
  String get preop_mortality_recommendation_very_high =>
      'Tìm phương án thay thế';

  @override
  String get preop_mortality_patient_factors => 'Yếu tố bệnh nhân';

  @override
  String get preop_mortality_age_label => 'Tuổi';

  @override
  String get preop_mortality_age_unit => 'năm';

  @override
  String get preop_mortality_asa_label => 'Phân loại ASA';

  @override
  String get preop_mortality_asa_1 => 'ASA I';

  @override
  String get preop_mortality_asa_2 => 'ASA II';

  @override
  String get preop_mortality_asa_3 => 'ASA III';

  @override
  String get preop_mortality_asa_4 => 'ASA IV';

  @override
  String get preop_mortality_asa_5 => 'ASA V';

  @override
  String get preop_mortality_surgery_factors => 'Yếu tố phẫu thuật';

  @override
  String get preop_mortality_surgery_risk_label => 'Nguy cơ phẫu thuật';

  @override
  String get preop_mortality_surgery_low => 'Thấp';

  @override
  String get preop_mortality_surgery_low_desc => 'Phẫu thuật nông, ít xâm lấn';

  @override
  String get preop_mortality_surgery_intermediate => 'Trung bình';

  @override
  String get preop_mortality_surgery_intermediate_desc =>
      'Phẫu thuật nội soi, xâm lấn vừa';

  @override
  String get preop_mortality_surgery_high => 'Cao';

  @override
  String get preop_mortality_surgery_high_desc => 'Phẫu thuật lớn, mạch máu';

  @override
  String get preop_mortality_emergency => 'Phẫu thuật cấp cứu';

  @override
  String get preop_mortality_emergency_desc => 'Phẫu thuật không thể trì hoãn';

  @override
  String get preop_mortality_comorbidities => 'Bệnh kèm theo';

  @override
  String get preop_mortality_cardiac => 'Bệnh tim';

  @override
  String get preop_mortality_cardiac_desc => 'Suy tim, bệnh mạch vành';

  @override
  String get preop_mortality_pulmonary => 'Bệnh phổi';

  @override
  String get preop_mortality_pulmonary_desc => 'COPD, hen, suy hô hấp';

  @override
  String get preop_mortality_renal => 'Bệnh thận';

  @override
  String get preop_mortality_renal_desc => 'Suy thận, thẩm phân';

  @override
  String get preop_mortality_hepatic => 'Bệnh gan';

  @override
  String get preop_mortality_hepatic_desc => 'Xơ gan, suy gan';

  @override
  String get preop_mortality_neurologic => 'Bệnh thần kinh';

  @override
  String get preop_mortality_neurologic_desc => 'Đột quỵ, sa sút trí tuệ';

  @override
  String get preop_mortality_diabetes => 'Đái tháo đường';

  @override
  String get preop_mortality_diabetes_desc => 'ĐTĐ có/không biến chứng';

  @override
  String get preop_mortality_immunosuppression => 'Suy giảm miễn dịch';

  @override
  String get preop_mortality_immunosuppression_desc =>
      'Corticoid, hóa trị, HIV';

  @override
  String get preop_mortality_risk_stratification => 'Phân tầng nguy cơ';

  @override
  String get preop_mortality_action_safe => 'Phẫu thuật an toàn';

  @override
  String get preop_mortality_action_standard => 'Chuẩn bị tiêu chuẩn';

  @override
  String get preop_mortality_action_optimize => 'Tối ưu hóa trước mổ';

  @override
  String get preop_mortality_action_consider => 'Cân nhắc cẩn thận';

  @override
  String get preop_mortality_action_alternative => 'Tìm phương án khác';

  @override
  String get preop_mortality_guidelines => 'Hướng dẫn';

  @override
  String get preop_mortality_guideline_low_title => 'Nguy cơ thấp';

  @override
  String get preop_mortality_guideline_low_1 =>
      '• Chuẩn bị phẫu thuật tiêu chuẩn';

  @override
  String get preop_mortality_guideline_low_2 => '• Theo dõi thường quy';

  @override
  String get preop_mortality_guideline_low_3 => '• Không cần đánh giá đặc biệt';

  @override
  String get preop_mortality_guideline_low_4 => '• Xuất viện theo kế hoạch';

  @override
  String get preop_mortality_guideline_moderate_title => 'Nguy cơ trung bình';

  @override
  String get preop_mortality_guideline_moderate_1 =>
      '• Tối ưu hóa các bệnh kèm theo';

  @override
  String get preop_mortality_guideline_moderate_2 =>
      '• Đánh giá tim phổi nếu cần';

  @override
  String get preop_mortality_guideline_moderate_3 =>
      '• Theo dõi chặt chẽ sau mổ';

  @override
  String get preop_mortality_guideline_moderate_4 => '• Chuẩn bị ICU nếu cần';

  @override
  String get preop_mortality_guideline_high_title => 'Nguy cơ cao';

  @override
  String get preop_mortality_guideline_high_1 => '• Đánh giá đa chuyên khoa';

  @override
  String get preop_mortality_guideline_high_2 => '• Cân nhắc phương án khác';

  @override
  String get preop_mortality_guideline_high_3 => '• Thảo luận với gia đình';

  @override
  String get preop_mortality_guideline_high_4 => '• Chăm sóc tích cực';

  @override
  String get preop_mortality_clinical_info => 'Thông tin lâm sàng';

  @override
  String get preop_mortality_clinical_text =>
      'Dự đoán tử vong phẫu thuật giúp đánh giá nguy cơ và lập kế hoạch chăm sóc phù hợp.';

  @override
  String get preop_mortality_reference_title => 'Tài liệu tham khảo';

  @override
  String get preop_mortality_reference_text =>
      'Various prediction models including ACS-NSQIP, P-POSSUM, and institution-specific models.';

  @override
  String get mdrd_gfr_title => 'MDRD GFR';

  @override
  String get mdrd_gfr_result => 'Kết quả GFR';

  @override
  String get mdrd_gfr_unit => 'mL/phút/1.73m²';

  @override
  String get mdrd_gfr_input_prompt => 'Nhập thông tin bệnh nhân';

  @override
  String get mdrd_gfr_input_title => 'Thông tin đầu vào';

  @override
  String get mdrd_gfr_age => 'Tuổi';

  @override
  String get mdrd_gfr_age_unit => 'năm';

  @override
  String get mdrd_gfr_creatinine => 'Creatinine huyết thanh';

  @override
  String get mdrd_gfr_creatinine_example => 'Ví dụ: 1.2 mg/dL';

  @override
  String get mdrd_gfr_demographics => 'Thông tin dân số';

  @override
  String get mdrd_gfr_female => 'Nữ giới';

  @override
  String get mdrd_gfr_female_factor => 'Hệ số điều chỉnh cho nữ';

  @override
  String get mdrd_gfr_african_american => 'Người Mỹ gốc Phi';

  @override
  String get mdrd_gfr_african_american_factor => 'Hệ số điều chỉnh chủng tộc';

  @override
  String get mdrd_gfr_function_normal => 'Chức năng thận bình thường';

  @override
  String get mdrd_gfr_function_mild => 'Giảm nhẹ chức năng thận';

  @override
  String get mdrd_gfr_function_mild_moderate => 'Giảm nhẹ-trung bình';

  @override
  String get mdrd_gfr_function_moderate_severe => 'Giảm trung bình-nặng';

  @override
  String get mdrd_gfr_function_severe => 'Giảm nặng chức năng thận';

  @override
  String get mdrd_gfr_function_esrd => 'Suy thận giai đoạn cuối';

  @override
  String get mdrd_gfr_stage_1 => 'Giai đoạn 1 (≥90)';

  @override
  String get mdrd_gfr_stage_2 => 'Giai đoạn 2 (60-89)';

  @override
  String get mdrd_gfr_stage_3a => 'Giai đoạn 3a (45-59)';

  @override
  String get mdrd_gfr_stage_3b => 'Giai đoạn 3b (30-44)';

  @override
  String get mdrd_gfr_stage_4 => 'Giai đoạn 4 (15-29)';

  @override
  String get mdrd_gfr_stage_5 => 'Giai đoạn 5 (<15)';

  @override
  String get mdrd_gfr_clinical_action => 'Hành động lâm sàng';

  @override
  String get mdrd_gfr_action_normal => 'Theo dõi định kỳ';

  @override
  String get mdrd_gfr_action_mild => 'Kiểm tra 6-12 tháng';

  @override
  String get mdrd_gfr_action_mild_moderate => 'Kiểm tra 3-6 tháng';

  @override
  String get mdrd_gfr_action_moderate_severe => 'Kiểm tra 1-3 tháng';

  @override
  String get mdrd_gfr_action_severe => 'Chuẩn bị thẩm phân';

  @override
  String get mdrd_gfr_action_esrd => 'Thẩm phân/ghép thận';

  @override
  String get mdrd_gfr_drug_dosing => 'Điều chỉnh liều thuốc';

  @override
  String get mdrd_gfr_dosing_normal => 'Liều bình thường';

  @override
  String get mdrd_gfr_dosing_reduce_25_50 => 'Giảm liều 25-50%';

  @override
  String get mdrd_gfr_dosing_reduce_50_75 => 'Giảm liều 50-75%';

  @override
  String get mdrd_gfr_dosing_avoid => 'Tránh thuốc độc thận';

  @override
  String get mdrd_gfr_comparison_title => 'So sánh với Cockcroft-Gault';

  @override
  String get mdrd_gfr_cockcroft_gault => 'Cockcroft-Gault';

  @override
  String get mdrd_gfr_estimated_unit => 'mL/phút ước tính';

  @override
  String get mdrd_gfr_weight_note => 'MDRD không cần cân nặng';

  @override
  String get mdrd_gfr_reference_values => 'Giá trị tham chiếu';

  @override
  String get mdrd_gfr_range_90_plus => '≥90 mL/phút/1.73m²';

  @override
  String get mdrd_gfr_range_60_89 => '60-89 mL/phút/1.73m²';

  @override
  String get mdrd_gfr_range_45_59 => '45-59 mL/phút/1.73m²';

  @override
  String get mdrd_gfr_range_30_44 => '30-44 mL/phút/1.73m²';

  @override
  String get mdrd_gfr_range_15_29 => '15-29 mL/phút/1.73m²';

  @override
  String get mdrd_gfr_range_under_15 => '<15 mL/phút/1.73m²';

  @override
  String get mdrd_gfr_clinical_info => 'Thông tin lâm sàng';

  @override
  String get mdrd_gfr_clinical_text =>
      'MDRD GFR ước tính chức năng thận dựa trên creatinine, tuổi, giới tính và chủng tộc. Được chuẩn hóa theo diện tích bề mặt cơ thể.';

  @override
  String get mdrd_gfr_reference_title => 'Tài liệu tham khảo';

  @override
  String get mdrd_gfr_reference_text =>
      'Levey AS, et al. A more accurate method to estimate glomerular filtration rate from serum creatinine. Ann Intern Med. 1999;130(6):461-70.';

  @override
  String get medical_disclaimer_professional_only => 'DÀNH CHO CÁN BỘ Y TẾ';

  @override
  String get medical_disclaimer_home_text =>
      'Ứng dụng này được thiết kế dành riêng cho các cán bộ y tế có chứng chỉ hành nghề. Tất cả thông tin y khoa chỉ mang tính tham khảo và không thể thay thế phán đoán lâm sàng, quy trình của cơ sở y tế, hoặc chăm sóc trực tiếp bệnh nhân.';

  @override
  String get medical_disclaimer_grace_text =>
      'Công cụ hỗ trợ quyết định lâm sàng. Luôn sử dụng phán đoán lâm sàng và tuân thủ quy trình của cơ sở y tế.';

  @override
  String get medical_disclaimer_sofa_text =>
      'Công cụ đánh giá ICU. Cần kết hợp với tình trạng lâm sàng của bệnh nhân.';

  @override
  String get medical_disclaimer_qsofa_text =>
      'Công cụ sàng lọc nhiễm trùng huyết. Không thay thế đánh giá lâm sàng và xét nghiệm.';

  @override
  String get medical_disclaimer_nihss_text =>
      'Công cụ đánh giá đột quỵ. Cần khám thần kinh và kết hợp lâm sàng.';

  @override
  String get medical_disclaimer_mdrd_text =>
      'Ước tính chức năng thận. Cân nhắc bối cảnh lâm sàng và xác nhận bằng các xét nghiệm bổ sung.';

  @override
  String get cam_icu_title => 'CAM-ICU';

  @override
  String get cam_icu_list_description => 'Đánh giá lú lẫn tại ICU';

  @override
  String get cam_icu_subtitle => 'Confusion Assessment Method for ICU';

  @override
  String get cam_icu_positive_delirium => 'Dương tính - Có lú lẫn';

  @override
  String get cam_icu_negative_delirium => 'Âm tính - Không lú lẫn';

  @override
  String get cam_icu_assessment_title => 'Đánh giá 4 đặc điểm CAM-ICU';

  @override
  String get medical_disclaimer_cam_icu_text =>
      'Công cụ sàng lọc lú lẫn tại ICU. Luôn kết hợp với đánh giá lâm sàng toàn diện và không thay thế chẩn đoán của bác sĩ chuyên khoa.';

  @override
  String get cam_icu_reference_title => 'Tài liệu tham khảo';

  @override
  String get cam_icu_feature_1_title => 'Thay đổi cấp tính hoặc dao động';

  @override
  String get cam_icu_feature_1_description =>
      'Có thay đổi cấp tính về tình trạng tâm thần so với baseline hoặc dao động trong 24h qua?';

  @override
  String get cam_icu_feature_2_title => 'Thiếu chú ý';

  @override
  String get cam_icu_feature_2_description =>
      'Bệnh nhân có khó tập trung chú ý, dễ bị phân tâm, hoặc khó theo dõi cuộc trò chuyện?';

  @override
  String get cam_icu_feature_3_title => 'Thay đổi mức độ ý thức';

  @override
  String get cam_icu_feature_3_description =>
      'RASS khác 0 (Alert and calm) hoặc có thay đổi mức độ ý thức?';

  @override
  String get cam_icu_feature_4_title => 'Tư duy không có tổ chức';

  @override
  String get cam_icu_feature_4_description =>
      'Tư duy không logic, không nhất quán, hoặc nói chuyện không rõ ràng?';

  @override
  String get cam_icu_feature_1_present => 'Có thay đổi cấp tính hoặc dao động';

  @override
  String get cam_icu_feature_2_present => 'Có thiếu chú ý';

  @override
  String get cam_icu_feature_3_present => 'Có thay đổi mức độ ý thức';

  @override
  String get cam_icu_feature_4_present => 'Có tư duy không tổ chức';

  @override
  String get cam_icu_results_title => 'Kết quả CAM-ICU';

  @override
  String get cam_icu_interpretation_label => 'Giải thích';

  @override
  String get cam_icu_algorithm_explanation =>
      'CAM-ICU dương tính nếu có Feature 1 hoặc 2 VÀ có Feature 3 hoặc 4';

  @override
  String get yes => 'Có';

  @override
  String get medical_disclaimer_rass_text =>
      'Công cụ đánh giá an thần và kích động tại ICU. Luôn kết hợp với đánh giá lâm sàng và không thay thế quyết định điều trị của bác sĩ.';

  @override
  String get rass_combative_interpretation => 'Hung hăng - Tấn công nhân viên';

  @override
  String get rass_very_agitated_interpretation =>
      'Rất kích động - Cần kiềm chế';

  @override
  String get rass_agitated_interpretation => 'Kích động - Chuyển động nhiều';

  @override
  String get rass_restless_interpretation => 'Bồn chồn - Không yên';

  @override
  String get rass_alert_calm_interpretation => 'Tỉnh táo và bình tĩnh';

  @override
  String get rass_drowsy_interpretation => 'Buồn ngủ - Tỉnh khi nói chuyện';

  @override
  String get rass_light_sedation_interpretation =>
      'An thần nhẹ - Tỉnh ngắn khi gọi tên';

  @override
  String get rass_moderate_sedation_interpretation =>
      'An thần trung bình - Tỉnh khi gọi tên';

  @override
  String get rass_deep_sedation_interpretation =>
      'An thần sâu - Tỉnh khi kích thích';

  @override
  String get rass_unarousable_interpretation => 'Không tỉnh được';

  @override
  String get rass_agitation_category => 'Kích động';

  @override
  String get rass_alert_calm_category => 'Tỉnh táo';

  @override
  String get rass_sedation_category => 'An thần';

  @override
  String get rass_score_selection_title => 'Chọn điểm RASS';

  @override
  String get rass_agitation_section => 'Kích động';

  @override
  String get rass_alert_section => 'Tỉnh táo';

  @override
  String get rass_sedation_section => 'An thần';

  @override
  String get rass_interpretation_title => 'Giải thích RASS';

  @override
  String get rass_current_level_label => 'Mức độ hiện tại';

  @override
  String get rass_scale_reference_title => 'Bảng tham chiếu RASS';

  @override
  String get rass_reference_title => 'Tài liệu tham khảo';

  @override
  String get rass_score_4_description =>
      'Hung hăng (Tấn công nhân viên hoặc cố gắng rút ống)';

  @override
  String get rass_score_3_description =>
      'Rất kích động (Kéo hoặc tháo catheter/ống; tấn công)';

  @override
  String get rass_score_2_description =>
      'Kích động (Chuyển động thường xuyên, chống lại thở máy)';

  @override
  String get rass_score_1_description =>
      'Bồn chồn (Lo lắng nhưng chuyển động không hung hăng)';

  @override
  String get rass_score_0_description => 'Tỉnh táo và bình tĩnh';

  @override
  String get rass_score_neg1_description =>
      'Buồn ngủ (Không hoàn toàn tỉnh táo, tỉnh >10s khi gọi)';

  @override
  String get rass_score_neg2_description =>
      'An thần nhẹ (Tỉnh ngắn <10s khi gọi tên)';

  @override
  String get rass_score_neg3_description =>
      'An thần trung bình (Chuyển động hoặc mở mắt khi gọi tên, không tiếp xúc ánh mắt)';

  @override
  String get rass_score_neg4_description =>
      'An thần sâu (Không phản ứng với tiếng gọi, chuyển động khi kích thích vật lý)';

  @override
  String get rass_score_neg5_description =>
      'Không tỉnh được (Không phản ứng với tiếng gọi hoặc kích thích vật lý)';

  @override
  String get rass_score_column => 'Điểm';

  @override
  String get rass_description_column => 'Mô tả';

  @override
  String get cam_icu_result_positive => 'CAM-ICU dương tính';

  @override
  String get cam_icu_result_negative => 'CAM-ICU âm tính';

  @override
  String get cam_icu_delirium_present => 'Có dấu hiệu lú lẫn';

  @override
  String get cam_icu_delirium_absent => 'Không có lú lẫn';

  @override
  String get cam_icu_clinical_features => 'Đặc điểm lâm sàng';

  @override
  String get cam_icu_assessment_criteria => 'Tiêu chí đánh giá';

  @override
  String get cam_icu_diagnosis_criteria => 'Tiêu chí chẩn đoán';

  @override
  String get cam_icu_clinical_info_title => 'Thông tin lâm sàng';

  @override
  String get cam_icu_clinical_info_content =>
      'CAM-ICU (Confusion Assessment Method for ICU) là công cụ đánh giá lú lẫn ở bệnh nhân ICU\n\nƯu điểm:\n• Đánh giá nhanh chóng và chính xác\n• Phù hợp cho bệnh nhân thở máy\n• Độ nhạy và độ đặc hiệu cao\n• Không cần khám thần kinh chuyên sâu\n\nCách thực hiện:\n• Đánh giá tất cả 4 feature\n• Có thể kết hợp với RASS\n• Thực hiện hàng ngày ở ICU\n• Ghi nhận thay đổi theo thời gian\n\nLưu ý quan trọng:\n• Cần đào tạo sử dụng CAM-ICU\n• Phân biệt với dementia\n• Theo dõi nguyên nhân gây lú lẫn\n• Điều trị kịp thời khi phát hiện';

  @override
  String get cam_icu_cannot_assess => 'Không thể đánh giá';

  @override
  String get cam_icu_references_title => 'Tài liệu tham khảo CAM-ICU';

  @override
  String get cam_icu_reference_text =>
      'Ely EW, et al. Delirium in mechanically ventilated patients: validity and reliability of the confusion assessment method for the intensive care unit (CAM-ICU). JAMA. 2001;286(21):2703-10.';

  @override
  String get rass_score_title => 'Điểm RASS';

  @override
  String get rass_title => 'Thang RASS';

  @override
  String get rass_list_description => 'Đánh giá mức độ an thần và kích động';

  @override
  String get rass_score_subtitle => 'Richmond Agitation-Sedation Scale';

  @override
  String get rass_level_combative => 'Hung hăng (+4)';

  @override
  String get rass_description_combative =>
      'Tấn công nhân viên hoặc cố gắng rút ống';

  @override
  String get rass_level_very_agitated => 'Rất kích động (+3)';

  @override
  String get rass_description_very_agitated =>
      'Kéo hoặc tháo catheter/ống; tấn công';

  @override
  String get rass_level_agitated => 'Kích động (+2)';

  @override
  String get rass_description_agitated =>
      'Chuyển động thường xuyên, chống lại thở máy';

  @override
  String get rass_level_restless => 'Bồn chồn (+1)';

  @override
  String get rass_description_restless =>
      'Lo lắng nhưng chuyển động không hung hăng';

  @override
  String get rass_level_alert => 'Tỉnh táo (0)';

  @override
  String get rass_description_alert => 'Tỉnh táo và bình tĩnh';

  @override
  String get rass_level_drowsy => 'Buồn ngủ (-1)';

  @override
  String get rass_description_drowsy =>
      'Không hoàn toàn tỉnh táo, tỉnh >10s khi gọi';

  @override
  String get rass_level_light_sedation => 'An thần nhẹ (-2)';

  @override
  String get rass_description_light_sedation => 'Tỉnh ngắn <10s khi gọi tên';

  @override
  String get rass_level_moderate_sedation => 'An thần trung bình (-3)';

  @override
  String get rass_description_moderate_sedation =>
      'Chuyển động hoặc mở mắt khi gọi tên, không tiếp xúc ánh mắt';

  @override
  String get rass_level_deep_sedation => 'An thần sâu (-4)';

  @override
  String get rass_description_deep_sedation =>
      'Không phản ứng với tiếng gọi, chuyển động khi kích thích vật lý';

  @override
  String get rass_level_unarousable => 'Không tỉnh được (-5)';

  @override
  String get rass_description_unarousable =>
      'Không phản ứng với tiếng gọi hoặc kích thích vật lý';

  @override
  String get rass_interpretation_agitation => 'Kích động';

  @override
  String get rass_interpretation_calm => 'Bình tĩnh';

  @override
  String get rass_interpretation_sedation => 'An thần';

  @override
  String get rass_target_light_moderate => 'Mục tiêu: RASS -1 đến -2';

  @override
  String get rass_target_alert_calm => 'Mục tiêu: RASS 0';

  @override
  String get rass_avoid_deep_sedation => 'Tránh: RASS -4 hoặc -5';

  @override
  String get rass_current_level => 'Mức độ hiện tại';

  @override
  String get rass_select_level => 'Chọn mức độ RASS';

  @override
  String get rass_sedation_goals => 'Mục tiêu an thần';

  @override
  String get rass_clinical_management => 'Quản lý lâm sàng';

  @override
  String get rass_management_agitation => 'Giảm kích động, xem xét nguyên nhân';

  @override
  String get rass_management_calm => 'Duy trì tình trạng hiện tại';

  @override
  String get rass_management_light => 'An thần nhẹ thích hợp';

  @override
  String get rass_management_moderate => 'Cân nhắc giảm an thần';

  @override
  String get rass_management_deep => 'Giảm an thần, đánh giá nguyên nhân';

  @override
  String get rass_clinical_info_title => 'Thông tin lâm sàng';

  @override
  String get rass_clinical_info_content =>
      'RASS (Richmond Agitation-Sedation Scale) là công cụ đánh giá mức độ kích động và an thần\n\nƯu điểm:\n• Đơn giản, dễ sử dụng\n• Độ tin cậy cao giữa các người đánh giá\n• Phù hợp cho bệnh nhân ICU\n• Kết hợp tốt với CAM-ICU\n\nCách sử dụng:\n• Đánh giá trước tiên không kích thích\n• Sau đó gọi tên bệnh nhân\n• Cuối cùng kích thích vật lý nếu cần\n• Ghi nhận phản ứng đầu tiên\n\nMục tiêu điều trị:\n• RASS 0 hoặc -1 ở hầu hết bệnh nhân\n• RASS -2 đến -3 nếu cần an thần sâu\n• Tránh RASS +2 trở lên (kích động)\n• Tránh RASS -4 hoặc -5 trừ khi cần thiết\n\nGhi chú quan trọng:\n• Đánh giá định kỳ mỗi ca\n• Điều chỉnh thuốc an thần theo RASS\n• Phối hợp với đánh giá đau và delirium';

  @override
  String get rass_references_title => 'Tài liệu tham khảo RASS';

  @override
  String get rass_reference_text =>
      'Sessler CN, et al. The Richmond Agitation-Sedation Scale: validity and reliability in adult intensive care unit patients. Am J Respir Crit Care Med. 2002;166(10):1338-44.';

  @override
  String get language_information_title => 'Thông tin ngôn ngữ';

  @override
  String get language_change_description =>
      'Thay đổi ngôn ngữ sẽ khởi động lại ứng dụng để áp dụng cài đặt ngôn ngữ mới. Tất cả các thuật ngữ y tế và quy trình sẽ được dịch tương ứng.';

  @override
  String get acute_stroke_title => 'Đột Quỵ Thiếu Máu Não Cấp';

  @override
  String get acute_stroke_subtitle => 'Time is Brain - Thời gian là não bộ';

  @override
  String get stroke_emergency_algorithm => '🚨 SƠ ĐỒ TIẾP CẬN XỬ TRÍ CẤP CỨU';

  @override
  String get stroke_recognition => 'NHẬN DIỆN CƠN ĐỘT QUỴ';

  @override
  String get stroke_recognition_desc => 'FAST/BE-FAST + Thời gian khởi phát';

  @override
  String get stroke_time_assessment => 'ĐÁNH GIÁ THỜI GIAN';

  @override
  String get stroke_time_desc =>
      '<4.5h IV tPA | <6h EVT | <24h EVT có điều kiện';

  @override
  String get stroke_imaging => 'CHẨN ĐOÁN HÌNH ẢNH';

  @override
  String get stroke_imaging_desc => 'CT não ngay lập tức → loại trừ xuất huyết';

  @override
  String get stroke_treatment_decision => 'QUYẾT ĐỊNH ĐIỀU TRỊ';

  @override
  String get stroke_treatment_desc => 'Đánh giá chỉ định tái tưới máu';

  @override
  String get stroke_golden_time => '⏰ THỜI GIAN VÀNG:';

  @override
  String get stroke_time_windows =>
      '🔴 <4.5h: IV tPA (Alteplase)\n🟡 <6h: EVT (Endovascular)\n🟢 6-24h: EVT có điều kiện';

  @override
  String get fast_assessment => 'NHẬN DIỆN - FAST/BE-FAST';

  @override
  String get fast_face => 'F - FACE (Mặt)';

  @override
  String get fast_face_desc =>
      'Yêu cầu BN cười hoặc cười toe toét\n→ Méo mặt, chảy nước dãi?';

  @override
  String get fast_arms => 'A - ARMS (Cánh tay)';

  @override
  String get fast_arms_desc =>
      'Yêu cầu BN giơ 2 tay lên 10 giây\n→ 1 tay rơi xuống?';

  @override
  String get fast_speech => 'S - SPEECH (Nói)';

  @override
  String get fast_speech_desc =>
      'Yêu cầu BN nói 1 câu đơn giản\n→ Nói ngọng, khó hiểu?';

  @override
  String get fast_time => 'T - TIME (Thời gian)';

  @override
  String get fast_time_desc =>
      'Ghi nhận thời gian CHÍNH XÁC\n→ Gọi cấp cứu ngay lập tức!';

  @override
  String get befast_extended => '🧠 BE-FAST (Mở rộng):';

  @override
  String get befast_extended_desc =>
      'B - BALANCE: Mất thăng bằng đột ngột\nE - EYES: Mất thị trường đột ngột';

  @override
  String get initial_assessment => 'ĐÁNH GIÁ BAN ĐẦU';

  @override
  String get abc_assessment => '🩺 ABC - Đường thở, thở, tuần hoàn';

  @override
  String get vital_signs_gcs => '📊 Vital signs + Glasgow Coma Scale';

  @override
  String get glucose_check =>
      '🩸 Glucose máu tại chỗ (loại trừ hạ đường huyết)';

  @override
  String get onset_time => '⏰ Thời gian khởi phát triệu chứng CHÍNH XÁC';

  @override
  String get medication_history =>
      '💊 Tiền sử dùng thuốc (đặc biệt thuốc chống đông)';

  @override
  String get nihss_quick => '🧠 NIHSS Score nhanh';

  @override
  String get iv_access => '💉 Lập đường truyền tĩnh mạch (2 đường nếu có thể)';

  @override
  String get contraindications_check => 'KIỂM TRA CHỐNG CHỈ ĐỊNH';

  @override
  String get absolute_contraindications =>
      '🚫 CHỐNG CHỈ ĐỊNH TUYỆT ĐỐI IV tPA:';

  @override
  String get relative_contraindications => '⚠️ CHỐNG CHỈ ĐỊNH TƯƠNG ĐỐI:';

  @override
  String get imaging_diagnosis => 'CHẨN ĐOÁN HÌNH ẢNH';

  @override
  String get ct_plain => 'CT NÃO KHÔNG THUỐC CẢN QUANG';

  @override
  String get ct_angiography => 'CT ANGIOGRAPHY (CTA)';

  @override
  String get ct_perfusion => 'CT PERFUSION (Nếu có)';

  @override
  String get reperfusion_therapy => 'ĐIỀU TRỊ TÁI TƯỚI MÁU';

  @override
  String get iv_alteplase => 'IV ALTEPLASE (tPA)';

  @override
  String get endovascular_therapy => 'ENDOVASCULAR THERAPY (EVT)';

  @override
  String get general_management => 'XỬ LÝ CHUNG';

  @override
  String get blood_pressure_mgmt => 'Huyết áp';

  @override
  String get glucose_mgmt => 'Glucose';

  @override
  String get temperature_mgmt => 'Thân nhiệt';

  @override
  String get swallowing_mgmt => 'Nuốt';

  @override
  String get swallowing_desc =>
      '• Đánh giá khả năng nuốt an toàn\n• NPO (Nil Per Os - nhịn ăn uống) cho đến khi đánh giá xong\n• Sonde dạ dày nếu cần\n• Tránh nguy cơ hít sặc';

  @override
  String get monitoring => 'THEO DÕI';

  @override
  String get monitoring_24h => '📊 THEO DÕI TRONG 24H ĐẦU:';

  @override
  String get warning_signs => '🚨 DẤU HIỆU BÁO ĐỘNG:';

  @override
  String get clinical_cases => 'CA LÂM SÀNG ĐIỂN HÌNH';

  @override
  String get clinical_discussion => '💭 TRANH LUẬN LÂM SÀNG';

  @override
  String get stroke_references => '📚 TÀI LIỆU THAM KHẢO';

  @override
  String get stroke_references_note =>
      'Tài liệu tham khảo dựa trên các guideline quốc tế và các nghiên cứu lâm sàng được công nhận trong lĩnh vực điều trị đột quỵ cấp tính.';

  @override
  String get stroke_medical_disclaimer =>
      'Thông tin này chỉ mang tính tham khảo và không thay thế cho đánh giá lâm sàng chuyên nghiệp. Mọi quyết định điều trị phải dựa trên đánh giá cụ thể của từng trường hợp và theo hướng dẫn của bác sĩ có chuyên môn. Trong cấp cứu đột quỵ, thời gian là yếu tố quyết định.';

  @override
  String get anaphylaxis_medical_disclaimer =>
      'Quy trình điều trị sốc phản vệ này chỉ mang tính tham khảo và không thay thế cho đánh giá lâm sàng chuyên nghiệp. Mọi quyết định điều trị phải dựa trên đánh giá cụ thể của từng bệnh nhân và theo hướng dẫn của bác sĩ có chuyên môn. Trong cấp cứu sốc phản vệ, việc tiêm epinephrine ngay lập tức có thể cứu sống bệnh nhân.';

  @override
  String get hypertensive_crisis_medical_disclaimer =>
      'Quy trình điều trị cơn tăng huyết áp này chỉ mang tính tham khảo và không thay thế cho đánh giá lâm sàng chuyên nghiệp. Mọi quyết định điều trị phải dựa trên đánh giá cụ thể của từng bệnh nhân và theo hướng dẫn của bác sĩ có chuyên môn. Quản lý huyết áp cần theo dõi cẩn thận và cá thể hóa.';

  @override
  String get hypoglycemia_medical_disclaimer =>
      'Quy trình điều trị hạ đường huyết này chỉ mang tính tham khảo và không thay thế cho đánh giá lâm sàng chuyên nghiệp. Mọi quyết định điều trị phải dựa trên đánh giá cụ thể của từng bệnh nhân và theo hướng dẫn của bác sĩ có chuyên môn. Hạ đường huyết nặng cần bổ sung glucose ngay lập tức.';

  @override
  String get hyperglycemic_medical_disclaimer =>
      'Quy trình điều trị cấp cứu tăng đường huyết này chỉ mang tính tham khảo và không thay thế cho đánh giá lâm sàng chuyên nghiệp. Mọi quyết định điều trị phải dựa trên đánh giá cụ thể của từng bệnh nhân và theo hướng dẫn của bác sĩ có chuyên môn. Cấp cứu tiểu đường cần quản lý cẩn thận dịch truyền và điện giải.';

  @override
  String get absolute_contraindications_content =>
      '• Xuất huyết não trên CT/MRI\n• Thời gian khởi phát >4.5h (hoặc không rõ)\n• Đột quỵ hoặc chấn thương sọ não trong 3 tháng\n• Tiền sử xuất huyết não\n• Nghi ngờ xuất huyết dưới nhện\n• Phẫu thuật lớn trong 14 ngày\n• Chấn thương đầu nặng trong 3 tháng\n• Triệu chứng nhanh chóng thuyên giảm\n• Triệu chứng nhẹ và cô lập';

  @override
  String get relative_contraindications_content =>
      '• HA tâm thu >185 hoặc tâm trương >110 mmHg\n• Đường huyết <50mg/dL hoặc >400mg/dL\n• Tiểu cầu <100,000/μL\n• INR >1.7 hoặc PT >15 giây\n• Dùng heparin trong 48h + aPTT cao\n• Dùng DOAC trong 48h';

  @override
  String get ct_plain_content =>
      '• MỤC TIÊU: <25 phút từ lúc đến\n• Loại trừ xuất huyết não\n• Đánh giá dấu hiệu thiếu máu não sớm\n• ASPECTS Score nếu >6h';

  @override
  String get cta_content =>
      '• Xác định vị trí tắc mạch máu lớn\n• Đánh giá tuần hoàn bàng hệ\n• Bắt buộc nếu >6h hoặc nghi ngờ LVO\n• Hướng dẫn EVT';

  @override
  String get ct_perfusion_content =>
      '• Đánh giá penumbra\n• Core infarct vs tissue at risk\n• Quyết định EVT trong cửa sổ 6-24h\n• Mismatch ratio >1.8';

  @override
  String get alteplase_protocol =>
      '• Liều: 0.9 mg/kg (tối đa 90mg)\n• 10% liều đầu tiên trong 1 phút\n• 90% còn lại truyền trong 60 phút\n• Theo dõi NIHSS mỗi 15 phút\n• Không dùng Aspirin trong 24h đầu';

  @override
  String get evt_protocol =>
      '• Chỉ định: LVO với ASPECTS ≥6\n• Thời gian: <6h (hoặc <24h có điều kiện)\n• Kỹ thuật: Stent retriever hoặc aspiration\n• Mục tiêu: TICI 2b-3 recanalization\n• Có thể kết hợp với IV tPA';

  @override
  String get bp_management =>
      '• Nếu đủ điều kiện tPA: <185/110 mmHg\n• Sau tPA: <180/105 mmHg trong 24h\n• Không tPA: cho phép HA cao (SBP <220)';

  @override
  String get glucose_management =>
      '• Mục tiêu: 140-180 mg/dL\n• Tránh hạ đường huyết\n• Insulin nếu glucose >180 mg/dL';

  @override
  String get temperature_management =>
      '• Mục tiêu: <37.5°C\n• Điều trị sốt tích cực\n• Tránh hạ thân nhiệt quá mức';

  @override
  String get monitoring_24h_content =>
      '• NIHSS mỗi 15 phút x 2h, sau đó mỗi 30 phút x 6h\n• Vital signs mỗi 15 phút x 2h\n• Neuro check mỗi 1h\n• CT não sau 24h (hoặc ngay nếu xấu đi)\n• Theo dõi tại Stroke Unit nếu có';

  @override
  String get warning_signs_content =>
      '• NIHSS tăng ≥4 điểm\n• Đau đầu dữ dội đột ngột\n• Buồn nôn/nôn\n• HA tăng đột ngột\n• Ý thức giảm\n→ CT não cấp cứu ngay!';

  @override
  String get case_1_title => 'Ca 1: Đột quỵ trong cửa sổ thời gian';

  @override
  String get case_1_scenario =>
      'Nam 65t, yếu liệt nửa người phải đột ngột lúc 8h sáng, đến viện 9h30';

  @override
  String get case_1_management =>
      '• NIHSS: 8 điểm\n• CT não: không xuất huyết\n• Thời gian: 1.5h\n→ Đủ điều kiện IV tPA';

  @override
  String get case_2_title => 'Ca 2: Large vessel occlusion';

  @override
  String get case_2_scenario =>
      'Nữ 70t, mất ý thức + liệt nửa trái, thời gian 3h';

  @override
  String get case_2_management =>
      '• NIHSS: 18 điểm\n• CTA: tắc MCA M1\n• ASPECTS: 8\n→ IV tPA + EVT';

  @override
  String get case_3_title => 'Ca 3: Wake-up stroke';

  @override
  String get case_3_scenario =>
      'Nam 55t, phát hiện liệt khi thức dậy, thời gian không rõ';

  @override
  String get case_3_management =>
      '• CT: không xuất huyết\n• MRI DWI-FLAIR mismatch\n• CTA: tắc MCA M1\n→ Cân nhắc EVT';

  @override
  String get discussion_1_title => 'Tranh luận 1';

  @override
  String get discussion_1_question =>
      'Bệnh nhân 80 tuổi, NIHSS 20, thời gian 2h - có nên tPA?';

  @override
  String get discussion_1_analysis =>
      '🔍 Phân tích:\n• Tuổi cao không phải chống chỉ định tuyệt đối\n• NIHSS cao → nguy cơ xuất huyết tăng\n• Cần đánh giá toàn diện: baseline functional status\n• Thảo luận với gia đình về nguy cơ/lợi ích\n\n💡 Quyết định: Nếu functional status tốt trước đó → có thể cân nhắc tPA';

  @override
  String get discussion_2_title => 'Tranh luận 2';

  @override
  String get discussion_2_question =>
      'Wake-up stroke với thời gian không rõ - làm gì?';

  @override
  String get discussion_2_analysis =>
      '🔍 Phân tích:\n• MRI DWI-FLAIR mismatch có thể giúp\n• Nếu FLAIR âm tính → có thể <4.5h\n• CTA để tìm LVO cho EVT\n• CT perfusion để đánh giá mismatch\n\n💡 Xu hướng hiện tại: Mở rộng cửa sổ thời gian với imaging selection';

  @override
  String get medical_disclaimer_note => 'LƯU Ý Y KHOA';

  @override
  String get acute_ischemic_stroke_title =>
      'QUY TRÌNH XỬ TRÍ ĐỘT QUỴ THIẾU MÁU NÃO CẤP TÍNH';

  @override
  String get acute_stroke_description =>
      'Xử lý cấp cứu đột quỵ - Time is Brain';

  @override
  String get snake_bite_title => 'Rắn cắn';

  @override
  String get snake_bite_subtitle => 'Xử lý cấp cứu và điều trị rắn độc cắn';

  @override
  String get snake_bite_description => 'Xử lý cấp cứu và điều trị rắn độc cắn';

  @override
  String get keep_patient_calm =>
      '• Giữ bệnh nhân bình tĩnh\n• Hạn chế hoạt động';

  @override
  String get calm_patient_subtitle => 'Giữ bệnh nhân bình tĩnh';

  @override
  String get immobilize_bite_area => '• Cố định vùng cắn\n• Tháo bỏ trang sức';

  @override
  String get immobilize_subtitle => 'Cố định vùng cắn';

  @override
  String get call_emergency_services => '• Gọi cấp cứu 115\n• Báo cáo chi tiết';

  @override
  String get emergency_services_subtitle => 'Gọi cấp cứu';

  @override
  String get transport_hospital =>
      '• Vận chuyển nhanh\n• Giữ vùng cắn thấp hơn tim';

  @override
  String get transport_subtitle => 'Vận chuyển bệnh viện';

  @override
  String get snake_identification => 'Nhận diện loài rắn';

  @override
  String get snake_identification_content =>
      '• Ghi nhận thời gian và địa điểm\n• Mô tả hình dáng, màu sắc rắn\n• Chụp ảnh nếu an toàn\n• Không bắt hoặc giết rắn';

  @override
  String get bite_assessment => 'Đánh giá vết cắn';

  @override
  String get bite_assessment_content =>
      '• Vị trí vết cắn\n• Số lượng vết thủng\n• Dấu hiệu phù nề\n• Màu sắc thay đổi';

  @override
  String get severity_signs => 'Dấu hiệu nghiêm trọng';

  @override
  String get severity_signs_content =>
      '• Đau dữ dội lan rộng\n• Phù nề tiến triển nhanh\n• Tê bì, yếu cơ\n• Buồn nôn, nôn\n• Khó thở, rối loạn ý thức\n• Chảy máu bất thường';

  @override
  String get treatment_protocol => 'Quy trình điều trị';

  @override
  String get first_aid => 'Sơ cứu';

  @override
  String get first_aid_steps =>
      '• Rửa vết thương bằng nước sạch\n• Băng vết thương nhẹ nhàng\n• KHÔNG cắt, hút hoặc prép vết thương\n• KHÔNG bó garo quá chặt\n• KHÔNG cho uống rượu';

  @override
  String get antivenom_therapy => 'Điều trị huyết thanh kháng nọc';

  @override
  String get antivenom_therapy_steps =>
      '• Đánh giá chỉ định\n• Pha chế đúng cách\n• Truyền từ từ\n• Theo dõi phản ứng';

  @override
  String get supportive_care => 'Điều trị hỗ trợ';

  @override
  String get supportive_care_steps =>
      '• Duy trì đường thở\n• Hỗ trợ tuần hoàn\n• Kiểm soát đau\n• Phòng ngừa nhiễm trùng';

  @override
  String get antivenom_guidelines => 'Hướng dẫn huyết thanh';

  @override
  String get antivenom_indications => 'Chỉ định sử dụng';

  @override
  String get antivenom_indications_content =>
      '• Phù nề lan rộng\n• Triệu chứng toàn thân\n• Rối loạn đông máu\n• Tổn thương thần kinh\n• Suy tuần hoàn';

  @override
  String get antivenom_dosage => 'Liều dùng';

  @override
  String get antivenom_dosage_content =>
      '• Khởi đầu: 4-6 lọ\n• Đánh giá sau 1-2h\n• Lặp lại nếu cần\n• Tối đa: 10-15 lọ/24h';

  @override
  String get antivenom_administration => 'Cách truyền';

  @override
  String get antivenom_administration_content =>
      '• Pha trong 100-200ml NaCl 0.9%\n• Truyền chậm 15-30 phút\n• Sẵn sàng xử lý dị ứng\n• Theo dõi chặt chẽ';

  @override
  String get complications_management => 'Xử lý biến chứng';

  @override
  String get systemic_envenomation => 'Ngộ độc toàn thân';

  @override
  String get systemic_envenomation_content =>
      '• Rối loạn đông máu\n• Suy thận cấp\n• Sốc\n• Suy hô hấp';

  @override
  String get local_complications => 'Biến chứng tại chỗ';

  @override
  String get local_complications_content =>
      '• Hội chứng khoang\n• Hoại tử mô\n• Nhiễm trùng thứ phát\n• Mất chức năng chi';

  @override
  String get allergic_reactions => 'Phản ứng dị ứng';

  @override
  String get allergic_reactions_content =>
      '• Epinephrine ngay lập tức\n• Corticosteroid\n• Antihistamine\n• Hỗ trợ hô hấp';

  @override
  String get monitoring_followup => 'Theo dõi và tái khám';

  @override
  String get immediate_monitoring => 'Theo dõi tức thì';

  @override
  String get immediate_monitoring_content =>
      '• Vital signs mỗi 15 phút\n• Đông máu mỗi 6h\n• Chức năng thận\n• Dấu hiệu nhiễm trùng';

  @override
  String get discharge_criteria => 'Tiêu chí xuất viện';

  @override
  String get discharge_criteria_content =>
      '• Ổn định >24h\n• Đông máu bình thường\n• Không tiến triển xấu\n• Không nhiễm trùng';

  @override
  String get algorithm_snake_bite => 'Thuật toán rắn cắn';

  @override
  String get algorithm_calm_immobilize => 'Bình tĩnh + Cố định';

  @override
  String get algorithm_assess_severity => 'Đánh giá mức độ nặng';

  @override
  String get algorithm_mild => 'Nhẹ: Theo dõi';

  @override
  String get algorithm_severe => 'Nặng: Huyết thanh';

  @override
  String get algorithm_observation => 'Theo dõi 24-48h';

  @override
  String get algorithm_antivenom => 'Huyết thanh kháng nọc';

  @override
  String get snake_bite_medical_disclaimer =>
      'Thông tin này chỉ mang tính tham khảo. Luôn tìm kiếm chăm sóc y tế khẩn cấp khi bị rắn cắn.';

  @override
  String get vietnamese_snakes_title => '🐍 Nhận diện loài rắn Việt Nam';

  @override
  String get vietnamese_snakes_content =>
      '🇻🇳 RẮN ĐỘC PHỔ BIẾN:\n• Rắn hổ mang (Naja kaouthia): Cổ xòe, nọc thần kinh\n• Rắn cạp nia (Bungarus): Sọc đen-trắng, nọc thần kinh\n• Rắn lục (Trimeresurus): Màu xanh, nọc gây hoại tử\n• Rắn cạp nong (Russell viper): Vảy gai, nọc đông máu\n\n📝 GHI NHẬN:\n• Thời gian và địa điểm cắn\n• Mô tả hình dáng, màu sắc\n• Chụp ảnh nếu an toàn\n• KHÔNG bắt hoặc giết rắn';

  @override
  String get venom_type_signs_title => '⚠️ Dấu hiệu nghiêm trọng theo loại nọc';

  @override
  String get venom_type_signs_content =>
      '🧠 NỌC THẦN KINH (Neurotoxic):\n• Hổ mang, cạp nia: Liệt mí mắt, khó nói\n• Yếu cơ tiến triển từ trên xuống\n• Khó thở, nguy cơ ngừng thở\n• Ý thức tỉnh táo\n\n🩸 NỌC ĐÔNG MÁU (Hemotoxic):\n• Cạp nong: Chảy máu không cầm\n• Xuất huyết niêm mạc\n• Nước tiểu có máu\n• Shock mất máu\n\n🔥 NỌC HOẠI TỬ (Cytotoxic):\n• Rắn lục: Đau dữ dội tại chỗ\n• Phù nề lan rộng nhanh\n• Hoại tử mô, nhiễm trùng\n• Hội chứng khoang';

  @override
  String get antivenom_types_title => 'Các loại huyết thanh kháng nọc';

  @override
  String get antivenom_types_content =>
      '🐍 MONOVALENT (đơn giá):\n• Anti-Cobra (Naja): Chống nọc rắn hổ mang\n• Anti-Krait (Bungarus): Chống nọc rắn cạp nia\n• Anti-Russell Viper: Chống nọc rắn lục\n\n🐍 POLYVALENT (đa giá):\n• Queen Saovabha Memorial Institute (Thái Lan)\n• Vietnamese Polyvalent (Việt Nam)\n• Regional Southeast Asian Polyvalent';

  @override
  String get fab_fragments_title => '🧬 FAB FRAGMENTS - Công nghệ tiên tiến';

  @override
  String get fab_fragments_content =>
      '📚 ĐỊNH NGHĨA:\n• FAB = Fragment Antigen Binding\n• Là phần nhỏ của kháng thể (chỉ chứa vùng liên kết kháng nguyên)\n• Loại bỏ phần Fc (Fragment crystallizable)\n• Kích thước nhỏ hơn 50% so với kháng thể nguyên vẹn\n\n✅ ƯU ĐIỂM VƯỢT TRỘI:\n• Thấm vào mô nhanh hơn do kích thước nhỏ\n• Ít gây phản ứng dị ứng (anaphylaxis < 1%)\n• Có thể dùng nhiều lần mà không bị kháng thuốc\n• Thải trừ qua thận nhanh hơn\n• An toàn cho trẻ em và người già\n• Tương tác thuốc ít hơn\n\n🔬 CƠ CHẾ HOẠT ĐỘNG:\n• Liên kết trực tiếp với nọc độc\n• Vô hiệu hóa enzyme phospholipase A2\n• Ngăn chặn tác dụng hemolytic và coagulant\n• Không kích hoạt hệ bổ thể\n\n🌍 SẢN PHẨM HIỆN CÓ:\n• CroFab® (Mỹ): Chống nọc rắn chuông\n• DigiFab® (Mỹ): Chống ngộ độc Digitalis\n• EchiTAb® (Úc): Chống nọc rắn Echis\n• Polyvalent Fab (Thái Lan): Đang phát triển';

  @override
  String get preparation_methods_title => 'Cách pha chế khác nhau';

  @override
  String get preparation_methods_content =>
      '📋 HUYẾT THANH LỎNG (Liquid):\n• Pha trực tiếp 1:1 với NaCl 0.9%\n• Thể tích: 50-100ml/lọ\n• Truyền trong 60-90 phút\n• Tốc độ: 1-2ml/phút ban đầu\n\n📋 HUYẾT THANH KHÔ (Lyophilized):\n• Hòa tan với 10ml nước cất vô trùng\n• Sau đó pha trong 100-200ml NaCl 0.9%\n• Lắc nhẹ, không tạo bọt\n• Truyền trong 30-60 phút\n• Kiểm tra không có cặn\n\n🧬 FAB FRAGMENTS (Đặc biệt):\n• Pha trong 250ml NaCl 0.9% hoặc D5W\n• Truyền chậm: 4-6 giờ (đầu tiên)\n• Tốc độ: 25-50ml/giờ ban đầu\n• Có thể tăng tốc độ nếu dung nạp tốt\n• Theo dõi sát trong 30 phút đầu\n• Ít phản ứng dị ứng nhưng vẫn cần cảnh giác';

  @override
  String get specific_dosages_title => 'Liều dùng cụ thể';

  @override
  String get specific_dosages_content =>
      '💊 POLYVALENT ANTIVENOM:\n• Khởi đầu: 4-6 lọ (40-60ml)\n• Nặng: 8-12 lọ\n• Tối đa: 20 lọ/24h\n• Lặp lại: mỗi 6-12 giờ nếu cần\n\n💊 MONOVALENT ANTIVENOM:\n• Cobra: 3-5 lọ khởi đầu\n• Krait: 5-10 lọ (nọc độc hơn)\n• Russell Viper: 4-8 lọ\n• Có thể cần liều cao hơn\n\n🧬 FAB FRAGMENTS (Liều khác biệt):\n• Khởi đầu: 4-6 lọ (tương đương 40-60ml)\n• Nặng: 8-12 lọ\n• Tần suất: Có thể lặp lại mỗi 6-8 giờ\n• Ưu điểm: Liều thấp hơn nhưng hiệu quả cao\n• Trẻ em: 0.25-0.5ml/kg\n• Theo dõi đáp ứng sau 2-4 giờ';

  @override
  String get storage_title => 'Bảo quản';

  @override
  String get storage_content =>
      '🧊 BẢO QUẢN:\n• Nhiệt độ: 2-8°C (không đông lạnh)\n• Tránh ánh sáng trực tiếp\n• Kiểm tra hạn sử dụng\n• Không sử dụng nếu có cặn, đục\n• FAB Fragments: Bảo quản đặc biệt, hạn sử dụng ngắn hơn\n\n🌏 TÌNH HÌNH VIỆT NAM:\n• FAB Fragments: Chưa có sản xuất trong nước\n• Cần nhập khẩu từ Mỹ, Úc, châu Âu\n• Đang nghiên cứu sản xuất tại IVAC\n• Dự kiến có trong 2-3 năm tới';

  @override
  String get followup_monitoring_title => 'Theo dõi và điều chỉnh';

  @override
  String get followup_monitoring_content =>
      '⏰ ĐÁNH GIÁ SAU 1-2 GIỜ:\n• Phù nề có giảm?\n• PT/aPTT cải thiện?\n• Triệu chứng thần kinh thuyên giảm?\n\n🔄 NẾU KHÔNG CẢI THIỆN:\n• Lặp lại liều ban đầu\n• Kiểm tra loại huyết thanh\n• Xem xét chuyển tuyến cao hơn\n\n⚠️ DẤU HIỆU NGỪNG:\n• Cải thiện lâm sàng rõ rệt\n• Đông máu bình thường\n• Không tiến triển thêm';

  @override
  String get fab_indications_title => '🎯 CHỈ ĐỊNH SỬ DỤNG FAB FRAGMENTS';

  @override
  String get fab_indications_content =>
      '✅ ƯU TIÊN SỬ DỤNG KHI:\n• Bệnh nhân có tiền sử dị ứng huyết thanh\n• Trẻ em dưới 12 tuổi\n• Người cao tuổi >65 tuổi\n• Bệnh nhân suy giảm miễn dịch\n• Cần dùng huyết thanh nhiều lần\n• Rắn cắn ở vùng đầu cổ (nguy hiểm)\n\n🚨 CHỈ ĐỊNH TUYỆT ĐỐI:\n• Phản ứng anaphylaxis với huyết thanh thường\n• Rắn cực độc (King Cobra, Sea Snake)\n• Ngộ độc nặng với rối loạn đông máu\n• Bệnh nhân có bệnh lý tim mạch nặng\n\n⚠️ CHÚ Ý ĐẶC BIỆT:\n• Vẫn cần theo dõi phản ứng dị ứng\n• Hiệu quả cao hơn nhưng đắt tiền\n• Cần đào tạo nhân viên sử dụng\n• Ưu tiên cho các trường hợp nặng';

  @override
  String get sources_references_title =>
      '📚 TÀI LIỆU THAM KHẢO & NGUỒN CUNG CẤP';

  @override
  String get scientific_references => '📖 TÀI LIỆU KHOA HỌC:';

  @override
  String get vietnam_suppliers => '🏥 NGUỒN CUNG CẤP HUYẾT THANH VIỆT NAM:';

  @override
  String get vietnam_suppliers_content =>
      '• Viện Vệ sinh Dịch tễ Trung ương\n• Bệnh viện Nhiệt đới Trung ương\n• Bệnh viện Chợ Rẫy (TP.HCM)\n• Bệnh viện Bạch Mai (Hà Nội)';

  @override
  String get international_suppliers => '🌏 HUYẾT THANH NHẬP KHẨU:';

  @override
  String get international_suppliers_content =>
      '• Queen Saovabha Memorial Institute (Thái Lan)\n• Myanmar Pharmaceutical Factory\n• Haffkine Bio-Pharmaceutical (Ấn Độ)';

  @override
  String get snake_algorithm_title => 'THUẬT TOÁN ĐIỀU TRỊ';

  @override
  String get snake_assessment_title => 'ĐÁNH GIÁ BAN ĐẦU';

  @override
  String get snake_first_aid_title => 'SƠ CỨU TẠI HIỆN TRƯỜNG';

  @override
  String get snake_treatment_title => 'ĐIỀU TRỊ TẠI BỆNH VIỆN';

  @override
  String get snake_antivenom_title => 'ĐIỀU TRỊ HUYẾT THANH KHÁNG NỌC';

  @override
  String get snake_complications_title => 'XỬ LÝ BIẾN CHỨNG';

  @override
  String get snake_monitoring_title => 'THEO DÕI VÀ CHĂM SÓC';

  @override
  String get snake_references_title => 'TÀI LIỆU THAM KHẢO & NGUỒN CUNG CẤP';

  @override
  String get algorithm_step1_title => '1. Đánh giá ban đầu';

  @override
  String get algorithm_step1_content =>
      '• ABC assessment\n• Vital signs\n• Mô tả vết cắn';

  @override
  String get algorithm_step2_title => '2. Phân loại độ nặng';

  @override
  String get algorithm_step2_content =>
      '• Nhẹ: Chỉ đau tại chỗ\n• Trung bình: Phù lan rộng\n• Nặng: Triệu chứng toàn thân';

  @override
  String get algorithm_step3_title => '3. Quyết định điều trị';

  @override
  String get algorithm_step3_content =>
      '• Nhẹ: Theo dõi 24h\n• Trung bình-Nặng: Huyết thanh kháng nọc';

  @override
  String get algorithm_step4_title => '4. Theo dõi đáp ứng';

  @override
  String get algorithm_step4_content =>
      '• Đánh giá sau 1-2h\n• Lặp lại nếu tiến triển xấu';

  @override
  String get initial_treatment_title => 'Xử lý ban đầu';

  @override
  String get initial_treatment_content =>
      '• Rửa vết thương bằng nước sạch\n• Băng vết thương nhẹ nhàng\n• KHÔNG cắt, hút hoặc prep vết thương\n• KHÔNG bó garo quá chặt\n• KHÔNG cho uống rượu';

  @override
  String get pressure_bandage_title => 'Băng áp lực';

  @override
  String get pressure_bandage_content =>
      '• Bắt đầu từ bàn tay/chân\n• Băng lên toàn bộ chi\n• Áp lực vừa phải\n• Kiểm tra tuần hoàn';

  @override
  String get first_aid_content =>
      '• Giữ bình tĩnh, không hoảng sợ\n• Rửa vết thương bằng nước sạch\n• Tháo trang sức ở vùng bị cắn\n• Không cắt vết thương\n• Không hút nọc bằng miệng\n• Băng ép giảm áp lực lympho\n• Cố định chi bị cắn\n• Vận chuyển ngay đến bệnh viện';

  @override
  String get hospital_treatment_content =>
      '• Đánh giá tình trạng bệnh nhân\n• Xét nghiệm đông máu, chức năng thận\n• Phân loại mức độ ngộ độc\n• Chỉ định huyết thanh kháng nọc\n• Theo dõi dấu hiệu sống\n• Xử lý biến chứng\n• Điều trị hỗ trợ';

  @override
  String get antivenom_content =>
      '• Đánh giá chỉ định huyết thanh\n• Chuẩn bị xử trí phản ứng dị ứng\n• Pha loãng huyết thanh theo hướng dẫn\n• Truyền chậm, theo dõi chặt chẽ\n• Liều lượng theo mức độ ngộ độc\n• Theo dõi hiệu quả điều trị\n• Có thể cần nhiều lần truyền';

  @override
  String get complication_management_content =>
      '• Phản ứng dị ứng huyết thanh\n• Rối loạn đông máu\n• Suy thận cấp\n• Hội chứng khoang\n• Nhiễm trùng vết thương\n• Hoại tử mô\n• Tàn phế vận động';

  @override
  String get monitoring_care_content =>
      '• Theo dõi dấu hiệu sống\n• Kiểm tra chức năng đông máu\n• Đánh giá chức năng thận\n• Chăm sóc vết thương\n• Vật lý trị liệu sớm\n• Tư vấn tâm lý\n• Hướng dẫn phòng ngừa';

  @override
  String get references_content =>
      '1. WHO Guidelines for Snakebite Management\n2. Vietnamese Ministry of Health Protocol\n3. SEARO Regional Guidelines\n4. Clinical Toxinology Resources\n5. Antivenom Producer Guidelines\n6. Regional Poisoning Centers\n7. Emergency Medicine Textbooks';

  @override
  String get csfAnalysisTitle => 'Phân tích dịch não tủy';

  @override
  String get csfAnalysisSubtitle =>
      'Chẩn đoán viêm màng não và bệnh lý thần kinh';

  @override
  String get csfParameters => 'Thông số dịch não tủy';

  @override
  String get requiredForDiagnosis => '* Bắt buộc để chẩn đoán';

  @override
  String get pressureLabel => 'Áp lực (mmH2O)';

  @override
  String get lactateLabel => 'Lactate (mmol/L)';

  @override
  String get appearanceXanthochromic => 'Vàng (xanthochromic)';

  @override
  String get serumGlucoseRatioNote =>
      '* Để tính tỷ lệ glucose DNT/máu (mặc định 90 mg/dL)';

  @override
  String get analyzeCsf => 'Phân tích DNT';

  @override
  String get csfTypeNormal => 'Bình thường';

  @override
  String get csfTypeBacterial => 'Viêm màng não do vi khuẩn';

  @override
  String get csfTypeViral => 'Viêm màng não do virus';

  @override
  String get csfTypeTuberculous => 'Viêm màng não do lao';

  @override
  String get csfTypeFungal => 'Viêm màng não do nấm';

  @override
  String get csfTypeMalignant => 'Viêm màng não do ác tính';

  @override
  String get csfTypeHemorrhagic => 'Xuất huyết dưới nhện';

  @override
  String get csfTypeTraumatic => 'Chọc nhầm mạch máu';

  @override
  String get keyParameters => 'Thông số chính:';

  @override
  String get cellsLabel => 'Tế bào';

  @override
  String get riskLevel => 'Mức độ nguy cơ:';

  @override
  String get likelyDiagnoses => 'Chẩn đoán có thể:';

  @override
  String get usingDefaultValues => 'Sử dụng giá trị mặc định:';

  @override
  String get defaultSerumGlucose => '• Glucose máu: 90 mg/dL';

  @override
  String get defaultCsfPressure => '• Áp lực DNT: 150 mmH2O';

  @override
  String get fluidAppearanceLabel => 'Tính chất dịch';

  @override
  String get bloodParametersLabel => 'Thông số máu';

  @override
  String get notesLabel => 'Ghi chú';

  @override
  String get notesHint => 'Thông tin bổ sung...';

  @override
  String get referencesLabel => 'Tài liệu tham khảo';
}
