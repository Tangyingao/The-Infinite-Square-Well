m = 9.1e-31; %电子质量
a = 0.2e-9;%势阱的宽度
h = 6.626e-34;%约化普朗克常数

% nx = input('Please input nx:');
% ny = input('Please input ny:');
nx = [1 2];
ny = [1 2];

%能级能量
%En = (n.^2*pi^2*h^2)/2*m*a^2;
%% 一维无限深势阱问题的可视化分析
%波函数和概率密度分布图
% for i = 1:2:2*max(n)
%     %画图
%     %波函数
%     psi = ((2/a)^(1/2))*(sin(n((i+1)/2)*pi.*x/a));
%     subplot(max(n),2,i);
%     plot(x, psi);
%     grid;
%     xlabel('x');
%     ylabel('\psi');
%     title(['n=' num2str(n((i+1)/2)) '   Wave function']);%要是直接使用n((i+1)/2)会怎么样？！！
%     
%     %波函数平方
%     subplot(max(n),2,i+1);
%     plot(x,psi.^2);
%     grid;
%     xlabel('x');
%     ylabel('\psi^{2}');%平方上标
%     title('Probability density');
%     
% end


%% 二维，三维无限深势阱问题的可视化分析
%势阱是一个正方体
%波函数

%波函数和概率密度分布图
for i = 1:1:max(nx)
    for j = 1:2:2*max(ny)-1
        %画图
        %波函数
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
        
        %波函数平方
        subplot(max(nx),2*max(ny),(i-1)*2*max(ny)+j+1);
        mesh(x, y ,psi.^2);%必须是点乘
        grid;
        xlabel('x');
        ylabel('y');
        zlabel('\psi^{2}')
        title(['nx=' num2str(i) '  ny=' num2str((j+1)/2) '   Probability Density']);
    end
    
    
    
    
end


  














