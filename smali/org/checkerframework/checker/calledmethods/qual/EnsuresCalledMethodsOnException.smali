.class public interface abstract annotation Lorg/checkerframework/checker/calledmethods/qual/EnsuresCalledMethodsOnException;
.super Ljava/lang/Object;
.source "EnsuresCalledMethodsOnException.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/calledmethods/qual/EnsuresCalledMethodsOnException$List;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Lorg/checkerframework/checker/calledmethods/qual/EnsuresCalledMethodsOnException$List;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/InheritedAnnotation;
.end annotation


# virtual methods
.method public abstract methods()[Ljava/lang/String;
.end method

.method public abstract value()[Ljava/lang/String;
.end method
