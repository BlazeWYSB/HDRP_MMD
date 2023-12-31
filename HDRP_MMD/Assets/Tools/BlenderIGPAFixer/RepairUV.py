
import bpy
import csv

# 设置CSV文件的路径
csv_file_path = "C:\\Users\\10426\\Documents\\GPA\\uv.csv"

# 确保至少有一个物体被选中
selected_obj = bpy.context.active_object
if selected_obj is None or selected_obj.type != 'MESH':
    print("No active mesh with at least 6 UV maps found.")
else:
    # 读取CSV文件中的UV数据
    uv_data = {}
    with open(csv_file_path, mode='r') as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',') # 确认是否用Tab作为分隔符
        next(csv_reader)  # 跳过标题行
        for i, row in enumerate(csv_reader):
            if len(row) != 2:  # 确保每一行都有两列数据
                continue
            index = int(row[0])
            uv_value = float(row[1])

            # 由于索引是连续重复的，这里取索引的偶数判定为u，奇数判定为v
            if i % 2 == 0:  # 偶数行， 表示为u值
                if index not in uv_data:
                    uv_data[index] = [0, 0]
                uv_data[index][0] = uv_value
            else:  # 奇数行， 表示为v值
                uv_data[index][1] = uv_value

    # 更新物体的UV数据
    mesh = selected_obj.data
    uv_layer = mesh.uv_layers[0].data  # 假设我们更新第六个UV map (索引为5)

    for poly in mesh.polygons:
        for loop_index in poly.loop_indices:
            loop = mesh.loops[loop_index]
            vertex_index = loop.vertex_index
            if vertex_index in uv_data:
                # Blender中的UV坐标是(u, v)的形式
                uv_layer[loop_index].uv = uv_data[vertex_index]

