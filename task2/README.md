
# Task 2 — Static and Dynamic Binding in C#

## Introduction

This task demonstrates static and dynamic binding in C# using object-oriented programming. The implementation uses inheritance and the `virtual`, `override`, and `new` keywords to show how method selection works.

## Implementation

The program contains two classes: `Spacecraft` and `MarsRover`. The `MarsRover` class inherits from `Spacecraft`.

### 1. Base Class — Spacecraft

The `Spacecraft` class defines two methods:

```csharp
public virtual void Launch()
{
    Console.WriteLine("Spacecraft is launching");
}

public void Status()
{
    Console.WriteLine("General spacecraft status");
}
```

The `Launch()` method is declared with `virtual`, allowing derived classes to override it. The `Status()` method is non-virtual.

### 2. Derived Class — MarsRover

The `MarsRover` class implements the following methods:

```csharp
public override void Launch()
{
    Console.WriteLine("Mars rover is launching");
}

public new void Status()
{
    Console.WriteLine("Mars rover is ready for exploration");
}
```

The `override` keyword provides a new implementation of the inherited virtual method, while `new` hides the inherited `Status()` method.

### 3. Demonstrating Binding

The `Main()` method contains:

```csharp
Spacecraft spacecraft = new MarsRover();
MarsRover rover = new MarsRover();

spacecraft.Launch();
spacecraft.Status();
rover.Status();
```

- `spacecraft.Launch()` demonstrates dynamic binding. The actual object type determines which overridden method executes.
- `spacecraft.Status()` demonstrates static binding. The compiler selects the base-class method based on the declared reference type.
- `rover.Status()` calls the hidden method in `MarsRover` because the reference is declared as `MarsRover`.

## Results

The program was tested using OnlineGDB and produced the following output:

```text
Mars rover is launching
General spacecraft status
Mars rover is ready for exploration
```

## Conclusion

The program demonstrates how C# supports different method-selection mechanisms through inheritance. Virtual method overriding enables dynamic binding while non-virtual method hiding demonstrates static binding.
