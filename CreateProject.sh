currentFolder=${PWD##*/} 
mkdir "$currentFolder"
dotnet new sln --name "$currentFolder"
cd "$currentFolder"
dotnet new mvc
dotnet add package Microsoft.EntityFrameworkCore.Tools
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
cd ..
dotnet sln add ""$currentFolder"/"$currentFolder".csproj"
cd "$currentFolder"/Models
touch Product.cs
echo "namespace "$currentFolder".Models; public class Product{ public int ProductId {get;set;} public string ProductName {get;set;}}"  > Product.cs
