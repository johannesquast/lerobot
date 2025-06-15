import torch
import time
import torchvision.models as models

model = models.resnet50(weights="ResNet50_Weights.DEFAULT")
model.eval()
data = torch.rand(1, 3, 224, 224)

for i in range(3):
    start = time.time()
    with torch.no_grad():
        cpu_result = model(data)
    print(f"Inference {i} took {time.time() - start}")


print("CPU infer completed")
model = model.to("xpu")
data = data.to("xpu")


for i in range(3):
    start = time.time()
    with torch.no_grad():
        xpu_result = model(data)
    print(f"Inference {i} took {time.time() - start}")

print("Execution finished")
print(f"Error: {torch.norm(cpu_result - xpu_result.to('cpu'))}")