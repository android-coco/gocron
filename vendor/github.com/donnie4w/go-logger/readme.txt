go-logger ��golang ����־�� �����ڶ�golang����log�ķ�װ��
�÷�����java��־���߰�log4j

��ӡ��־��5������ Debug��Info��Warn, Error ,Fatal  ��־�����ɵ͵���

������־����ķ���Ϊ��logger.SetLevel() �磺logger.SetLevel(logger.WARN)
��logger.Debug(....),logger.Info(...) ��־���������� 
 logger.Warn(...),logger.Error(...),logger.Fatal(...)��־������
������־����Ĳ�����7�����ֱ�Ϊ��ALL��DEBUG��INFO��WARN��ERROR��FATAL��OFF
���� ALL��ʾ���е��ô�ӡ��־�ķ�������������OFF���ʾ����������


��־�ļ��и����������ͣ�1Ϊ�������з֡�2Ϊ����־��С�з֡�
�������з�ʱ��ÿ��һ��������־�ļ�����׺Ϊ .yyyy-MM-dd 
��0��������ǰһ�챸���ļ�

����С�з�����Ҫ3��������1Ϊ�ļ���С��2Ϊ��λ��3Ϊ�ļ�����
�ļ�������ָ����ֵʱ�����ɱ����ļ�����βΪ���ε�������Ȼ����
�ļ�����������ָ������ʱ�������ɵ���־�ļ�������ǰ�����ɵ�ͬ���ı�����־�ļ���

ʾ����

	//ָ���Ƿ����̨��ӡ��Ĭ��Ϊtrue
	logger.SetConsole(true)
	//ָ����־�ļ����ݷ�ʽΪ�ļ���С�ķ�ʽ
	//��һ������Ϊ��־�ļ����Ŀ¼
	//�ڶ�������Ϊ��־�ļ�����
	//����������Ϊ�����ļ��������
	//���ĸ�����Ϊ�����ļ���С
	//���������Ϊ�ļ���С�ĵ�λ KB��MB��GB TB
	//logger.SetRollingFile("d:/logtest", "test.log", 10, 5, logger.KB)

	//ָ����־�ļ����ݷ�ʽΪ���ڵķ�ʽ
	//��һ������Ϊ��־�ļ����Ŀ¼
	//�ڶ�������Ϊ��־�ļ�����
	logger.SetRollingDaily("d:/logtest", "test.log")

	//ָ����־����  ALL��DEBUG��INFO��WARN��ERROR��FATAL��OFF �����ɵ͵���
	//һ��ϰ���ǲ��Խ׶�Ϊdebug�����ɻ���Ϊinfo����
	logger.SetLevel(logger.DEBUG)


��ӡ��־��
func log(i int) {
	logger.Debug("Debug>>>>>>>>>>>>>>>>>>>>>>" + strconv.Itoa(i))
	logger.Info("Info>>>>>>>>>>>>>>>>>>>>>>>>>" + strconv.Itoa(i))
	logger.Warn("Warn>>>>>>>>>>>>>>>>>>>>>>>>>" + strconv.Itoa(i))
	logger.Error("Error>>>>>>>>>>>>>>>>>>>>>>>>>" + strconv.Itoa(i))
	logger.Fatal("Fatal>>>>>>>>>>>>>>>>>>>>>>>>>" + strconv.Itoa(i))
}