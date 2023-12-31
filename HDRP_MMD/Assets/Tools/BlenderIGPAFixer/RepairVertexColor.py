import bpy
import csv

# 设置CSV文件的路径
csv_file_path = "C:\\Users\\10426\\Documents\\GPA\\vertColor.csv"

# 获取当前选中的物体
selected_obj = bpy.context.active_object

if selected_obj is not None and selected_obj.type == 'MESH':
    mesh = selected_obj.data
    # 确保物体有顶点颜色层, 如果没有则创建一个
    if not mesh.vertex_colors:
        mesh.vertex_colors.new()
    
    color_layer = mesh.vertex_colors.active

    # 读取CSV文件中的颜色数据
    vertex_colors = {}
    with open(csv_file_path, mode='r') as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')  # 使用'\t'作为分隔符，或者根据您的CSV文件实际情况调整
        next(csv_reader)  # 跳过标题行
        for row in csv_reader:
            if len(row) != 2:
                continue  # 行数据不正确
            index = int(row[0])  # 顶点索引
            color_value = int(row[1])  # 颜色值

            # 确定rgba值，例如此处模拟了根据索引排列的rgba顺序
            if index not in vertex_colors:
                vertex_colors[index] = [0, 0, 0, 0]  # 初始rgba列表
            alpha_index = index % 4
            channel_index = (index // 4) % 4
            vertex_colors[channel_index][alpha_index] = color_value / 255.0  # 归一化

    # 开始为每个多边形的顶点设置颜色
    bpy.context.object.data.use_paint_mask = False
    for poly in mesh.polygons:
        for li, loop_index in enumerate(poly.loop_indices):
            loop_vert_index = poly.vertices[li]
            if loop_vert_index in vertex_colors:
                # 设置rgba值
                rgba = vertex_colors[loop_vert_index]
                color_layer.data[loop_index].color = rgba

    # 更新视图

    print("Vertex colors updated from CSV data.")

else:
    print("Please select a mesh object.")