.class public Lcom/instagram/i/a;
.super Ljava/util/Observable;
.source "BestLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/instagram/i/a;


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/instagram/i/a;

    sput-object v0, Lcom/instagram/i/a;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/instagram/i/a;->c:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private a(Landroid/location/LocationManager;)V
    .locals 7
    .parameter

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/i/a;->d(Landroid/location/Location;)V

    .line 192
    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 196
    :cond_1
    return-void
.end method

.method public static declared-synchronized b()Lcom/instagram/i/a;
    .locals 3

    .prologue
    .line 234
    const-class v1, Lcom/instagram/i/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/i/a;->b:Lcom/instagram/i/a;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/instagram/i/a;

    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/i/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/i/a;->b:Lcom/instagram/i/a;

    .line 237
    :cond_0
    sget-object v0, Lcom/instagram/i/a;->b:Lcom/instagram/i/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/location/LocationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 203
    return-void
.end method

.method public static b(Landroid/location/Location;)Z
    .locals 4
    .parameter

    .prologue
    .line 160
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42c8

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 163
    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized c(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/instagram/i/a;->d:Landroid/location/Location;

    .line 74
    invoke-virtual {p0}, Lcom/instagram/i/a;->setChanged()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/instagram/i/a;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Landroid/location/Location;)V
    .locals 11
    .parameter

    .prologue
    const-wide/32 v9, 0x493e0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/instagram/i/a;->d:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0, p1}, Lcom/instagram/i/a;->c(Landroid/location/Location;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-eqz p1, :cond_0

    .line 116
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 117
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    .line 118
    iget-object v0, p0, Lcom/instagram/i/a;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    sub-long v7, v3, v7

    .line 119
    cmp-long v0, v5, v9

    if-gtz v0, :cond_4

    move v4, v1

    .line 120
    :goto_1
    cmp-long v0, v7, v9

    if-gtz v0, :cond_5

    move v0, v1

    .line 121
    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/instagram/i/a;->d:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    move v3, v1

    .line 125
    :goto_3
    if-eqz v3, :cond_b

    .line 128
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/instagram/i/a;->d:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-nez v5, :cond_7

    .line 152
    :cond_3
    :goto_4
    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    .line 153
    invoke-direct {p0, p1}, Lcom/instagram/i/a;->c(Landroid/location/Location;)V

    goto :goto_0

    :cond_4
    move v4, v2

    .line 119
    goto :goto_1

    :cond_5
    move v0, v2

    .line 120
    goto :goto_2

    :cond_6
    move v3, v2

    .line 121
    goto :goto_3

    .line 130
    :cond_7
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/instagram/i/a;->d:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-nez v5, :cond_9

    .line 131
    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    iget-object v6, p0, Lcom/instagram/i/a;->d:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    cmpg-float v5, v5, v6

    if-lez v5, :cond_3

    :cond_9
    move v1, v2

    goto :goto_4

    .line 154
    :cond_a
    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/instagram/i/a;->c(Landroid/location/Location;)V

    goto :goto_0

    :cond_b
    move v1, v2

    goto :goto_4
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/location/Location;
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/i/a;->d:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Observer;)V
    .locals 2
    .parameter

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/instagram/i/a;->addObserver(Ljava/util/Observer;)V

    .line 207
    iget-object v0, p0, Lcom/instagram/i/a;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v0}, Lcom/instagram/i/a;->a(Landroid/location/LocationManager;)V

    .line 209
    return-void
.end method

.method public final declared-synchronized a(Landroid/location/Location;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 80
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 82
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 83
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 84
    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/util/Observer;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/instagram/i/a;->deleteObserver(Ljava/util/Observer;)V

    .line 213
    iget-object v0, p0, Lcom/instagram/i/a;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v0}, Lcom/instagram/i/a;->b(Landroid/location/LocationManager;)V

    .line 214
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/instagram/i/a;->d(Landroid/location/Location;)V

    .line 52
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    return-void
.end method
