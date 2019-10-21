m = 9.1e-31; %��������
a = 0.2e-9;%����Ŀ��
h = 6.626e-34;%Լ�����ʿ˳���

% nx = input('Please input nx:');
% ny = input('Please input ny:');
nx = [1 2];
ny = [1 2];

%�ܼ�����
%En = (n.^2*pi^2*h^2)/2*m*a^2;
%% һά��������������Ŀ��ӻ�����
%�������͸����ܶȷֲ�ͼ
% for i = 1:2:2*max(n)
%     %��ͼ
%     %������
%     psi = ((2/a)^(1/2))*(sin(n((i+1)/2)*pi.*x/a));
%     subplot(max(n),2,i);
%     plot(x, psi);
%     grid;
%     xlabel('x');
%     ylabel('\psi');
%     title(['n=' num2str(n((i+1)/2)) '   Wave function']);%Ҫ��ֱ��ʹ��n((i+1)/2)����ô��������
%     
%     %������ƽ��
%     subplot(max(n),2,i+1);
%     plot(x,psi.^2);
%     grid;
%     xlabel('x');
%     ylabel('\psi^{2}');%ƽ���ϱ�
%     title('Probability density');
%     
% end


%% ��ά����ά��������������Ŀ��ӻ�����
%������һ��������
%������

%�������͸����ܶȷֲ�ͼ
for i = 1:1:max(nx)
    for j = 1:2:2*max(ny)-1
        %��ͼ
        %������
        [x,y] = meshgrid(0:1e-12:a);
        %psi = (2/a)*sin(nx.*pi.*x/a).*sin(ny.*pi.*y/a);
        %psi = (2/a)*sin(i*pi.*x/a).*sin(j*pi.*y/a);
        psi = (2/a)*sin(i*pi.*x/a).*sin((j+1)/2*pi.*y/a);
        
        subplot(max(nx),2*max(ny),(i-1)*2*max(ny) + j);
        mesh(x,y,psi)
        grid;
        xlabel('x');
        ylabel('y');
        zlabel('\psi')
        title(['nx=' num2str(i) '  ny=' num2str((j+1)/2) '   Wave function']);
        
        %������ƽ��
        subplot(max(nx),2*max(ny),(i-1)*2*max(ny)+j+1);
        mesh(x, y ,psi.^2);%�����ǵ��
        grid;
        xlabel('x');
        ylabel('y');
        zlabel('\psi^{2}')
        title(['nx=' num2str(i) '  ny=' num2str((j+1)/2) '   Probability Density']);
    end
    
    
    
    
end


  














