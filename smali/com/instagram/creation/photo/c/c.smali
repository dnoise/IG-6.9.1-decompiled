.class public abstract Lcom/instagram/creation/photo/c/c;
.super Ljava/lang/Object;
.source "PreciseOrientationEventListener.java"


# static fields
.field private static a:F


# instance fields
.field private b:F

.field private c:Landroid/hardware/SensorManager;

.field private d:Z

.field private e:I

.field private f:Landroid/hardware/Sensor;

.field private g:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const v0, 0x42652ee1

    sput v0, Lcom/instagram/creation/photo/c/c;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/photo/c/c;-><init>(Landroid/content/Context;B)V

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/instagram/creation/photo/c/c;->b:F

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/c/c;->d:Z

    .line 38
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/instagram/creation/photo/c/c;->c:Landroid/hardware/SensorManager;

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/instagram/creation/photo/c/c;->e:I

    .line 40
    iget-object v0, p0, Lcom/instagram/creation/photo/c/c;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/c/c;->f:Landroid/hardware/Sensor;

    .line 41
    iget-object v0, p0, Lcom/instagram/creation/photo/c/c;->f:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/instagram/creation/photo/c/d;

    invoke-direct {v0, p0}, Lcom/instagram/creation/photo/c/d;-><init>(Lcom/instagram/creation/photo/c/c;)V

    iput-object v0, p0, Lcom/instagram/creation/photo/c/c;->g:Landroid/hardware/SensorEventListener;

    .line 45
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/photo/c/c;)F
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/instagram/creation/photo/c/c;->b:F

    return v0
.end method

.method static synthetic a(Lcom/instagram/creation/photo/c/c;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput p1, p0, Lcom/instagram/creation/photo/c/c;->b:F

    return p1
.end method

.method static synthetic c()F
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/instagram/creation/photo/c/c;->a:F

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/creation/photo/c/c;->f:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/creation/photo/c/c;->d:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/instagram/creation/photo/c/c;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/instagram/creation/photo/c/c;->g:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/instagram/creation/photo/c/c;->f:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/instagram/creation/photo/c/c;->e:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/c/c;->d:Z

    goto :goto_0
.end method

.method public abstract a(F)V
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/creation/photo/c/c;->f:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/creation/photo/c/c;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/instagram/creation/photo/c/c;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/instagram/creation/photo/c/c;->g:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/c/c;->d:Z

    goto :goto_0
.end method
