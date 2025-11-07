import 'package:flutter/material.dart';

class MedicalDisclaimerWidget extends StatelessWidget {
  final bool isCompact;
  
  const MedicalDisclaimerWidget({
    super.key,
    this.isCompact = false,
  });

  @override
  Widget build(BuildContext context) {
    final isVietnamese = Localizations.localeOf(context).languageCode == 'vi';
    
    if (isCompact) {
      return _buildCompactDisclaimer(isVietnamese);
    }
    
    return _buildFullDisclaimer(isVietnamese);
  }

  Widget _buildFullDisclaimer(bool isVietnamese) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red.shade300, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Icon(Icons.warning_amber_rounded, 
                   color: Colors.red.shade700, size: 28),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  isVietnamese 
                      ? 'CÔNG CỤ GIÁO DỤC - KHÔNG PHẢI THIẾT BỊ Y TẾ'
                      : 'EDUCATIONAL TOOL - NOT A MEDICAL DEVICE',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          
          // Main disclaimer
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.red.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isVietnamese 
                      ? '🚨 THÔNG BÁO QUAN TRỌNG:'
                      : '🚨 IMPORTANT NOTICE:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade800,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  isVietnamese 
                      ? 'Ứng dụng này được thiết kế CHỈ cho mục đích GIÁO DỤC và tham khảo học tập của sinh viên y khoa, bác sĩ thực tập và chuyên gia y tế.'
                      : 'This application is designed ONLY for EDUCATIONAL purposes and learning reference for medical students, residents, and healthcare professionals.',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.red.shade700,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          
          // What it is NOT
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isVietnamese ? '❌ KHÔNG ĐƯỢC SỬ DỤNG ĐỂ:' : '❌ NOT TO BE USED FOR:',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade800,
                  ),
                ),
                const SizedBox(height: 6),
                ...(_getProhibitedUses(isVietnamese)).map((use) => 
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('• ', style: TextStyle(color: Colors.red.shade700, fontWeight: FontWeight.bold)),
                        Expanded(
                          child: Text(
                            use,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red.shade700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          
          // Final warning
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.red.shade800,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              isVietnamese 
                  ? '⚠️ Luôn tham khảo ý kiến bác sĩ có trình độ và tuân theo quy định của cơ sở y tế. Ứng dụng này KHÔNG thay thế được đánh giá lâm sàng và quyết định y khoa chuyên nghiệp.'
                  : '⚠️ Always consult qualified medical professionals and follow institutional protocols. This app does NOT replace clinical assessment and professional medical decisions.',
              style: const TextStyle(
                fontSize: 11,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompactDisclaimer(bool isVietnamese) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.orange.shade300),
      ),
      child: Row(
        children: [
          Icon(Icons.school, color: Colors.orange.shade700, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              isVietnamese 
                  ? 'CÔNG CỤ GIÁO DỤC: Chỉ dùng để học tập và tham khảo. Không thay thế đánh giá lâm sàng.'
                  : 'EDUCATIONAL TOOL: For learning and reference only. Does not replace clinical assessment.',
              style: TextStyle(
                fontSize: 11,
                color: Colors.orange.shade800,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<String> _getProhibitedUses(bool isVietnamese) {
    if (isVietnamese) {
      return [
        'Chẩn đoán bệnh nhân',
        'Đưa ra quyết định điều trị',
        'Thay thế khám lâm sàng',
        'Tư vấn y khoa trực tiếp',
        'Cấp cứu hoặc tình huống khẩn cấp',
        'Quyết định dùng thuốc',
        'Tính toán liều thuốc',
      ];
    } else {
      return [
        'Patient diagnosis',
        'Treatment decisions', 
        'Clinical decision making',
        'Direct medical advice',
        'Emergency or urgent situations',
        'Medication decisions',
        'Drug dosage calculations',
      ];
    }
  }
}

class EducationalContextWidget extends StatelessWidget {
  final String title;
  final String description;
  
  const EducationalContextWidget({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final isVietnamese = Localizations.localeOf(context).languageCode == 'vi';
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.school_outlined, color: Colors.blue.shade700, size: 20),
              const SizedBox(width: 8),
              Text(
                isVietnamese ? '📚 Bối cảnh giáo dục' : '📚 Educational Context',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade800,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.blue.shade700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 12,
              color: Colors.blue.shade600,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Icon(Icons.info_outline, color: Colors.blue.shade600, size: 16),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    isVietnamese 
                        ? 'Kết quả chỉ mang tính chất tham khảo học tập. Cần được kiểm chứng với hướng dẫn lâm sàng.'
                        : 'Results are for learning reference only. Must be validated with clinical guidelines.',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.blue.shade700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
