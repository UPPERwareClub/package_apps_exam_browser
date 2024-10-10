.class public final Lcom/google/zxing/client/android/camera/exposure/FroyoExposureInterface;
.super Ljava/lang/Object;
.source "FroyoExposureInterface.java"

# interfaces
.implements Lcom/google/zxing/client/android/camera/exposure/ExposureInterface;


# static fields
.field private static final MAX_EXPOSURE_COMPENSATION:F = 1.5f

.field private static final MIN_EXPOSURE_COMPENSATION:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "FroyoExposureInterface"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setExposure(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4

    .line 33
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    sget-object p1, Lcom/google/zxing/client/android/camera/exposure/FroyoExposureInterface;->TAG:Ljava/lang/String;

    const-string p2, "Camera does not support exposure compensation"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    div-float/2addr p2, v2

    float-to-int p2, p2

    .line 40
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_2
    const/high16 p2, 0x3fc00000    # 1.5f

    div-float/2addr p2, v2

    float-to-int p2, p2

    .line 43
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 45
    :goto_1
    sget-object v0, Lcom/google/zxing/client/android/camera/exposure/FroyoExposureInterface;->TAG:Ljava/lang/String;

    int-to-float v1, p2

    mul-float/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting exposure compensation to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    :goto_2
    return-void
.end method
