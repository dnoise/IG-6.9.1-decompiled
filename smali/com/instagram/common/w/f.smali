.class public abstract Lcom/instagram/common/w/f;
.super Ljava/lang/Object;
.source "ShakeSensorHelper.java"

# interfaces
.implements Lcom/instagram/common/p/a/a;


# instance fields
.field protected a:Landroid/support/v4/app/k;

.field private b:Landroid/hardware/SensorManager;

.field private c:Z

.field private d:Z

.field private e:Lcom/instagram/common/w/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/w/f;->d:Z

    .line 25
    new-instance v0, Lcom/instagram/common/w/g;

    invoke-direct {v0, p0}, Lcom/instagram/common/w/g;-><init>(Lcom/instagram/common/w/f;)V

    iput-object v0, p0, Lcom/instagram/common/w/f;->e:Lcom/instagram/common/w/a;

    .line 22
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/instagram/common/w/f;->b:Landroid/hardware/SensorManager;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/w/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/instagram/common/w/f;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/instagram/common/w/f;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/instagram/common/w/f;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/common/w/f;)Lcom/instagram/common/w/a;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/instagram/common/w/f;->e:Lcom/instagram/common/w/a;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    iget-boolean v0, p0, Lcom/instagram/common/w/f;->d:Z

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/instagram/common/w/f;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/instagram/common/w/f;->e:Lcom/instagram/common/w/a;

    iget-object v2, p0, Lcom/instagram/common/w/f;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 52
    iput-boolean v4, p0, Lcom/instagram/common/w/f;->d:Z

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/common/w/f;->a:Landroid/support/v4/app/k;

    .line 79
    invoke-virtual {p0}, Lcom/instagram/common/w/f;->c()V

    .line 80
    return-void
.end method

.method protected final b()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/instagram/common/w/h;

    invoke-direct {v0, p0}, Lcom/instagram/common/w/h;-><init>(Lcom/instagram/common/w/f;)V

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    instance-of v0, p1, Landroid/support/v4/app/k;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Landroid/support/v4/app/k;

    iput-object p1, p0, Lcom/instagram/common/w/f;->a:Landroid/support/v4/app/k;

    .line 71
    invoke-direct {p0}, Lcom/instagram/common/w/f;->d()V

    .line 73
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/instagram/common/w/f;->d:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/instagram/common/w/f;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/instagram/common/w/f;->e:Lcom/instagram/common/w/a;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/w/f;->d:Z

    .line 61
    :cond_0
    return-void
.end method
