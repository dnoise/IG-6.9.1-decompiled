.class public Lcom/instagram/api/g/g;
.super Ljava/lang/Object;
.source "NetworkSpeedEstimator.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/api/g/g;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/instagram/api/g/g;


# instance fields
.field private final c:[Lcom/instagram/api/g/h;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/instagram/api/g/g;

    sput-object v0, Lcom/instagram/api/g/g;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/instagram/api/g/h;

    iput-object v0, p0, Lcom/instagram/api/g/g;->c:[Lcom/instagram/api/g/h;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/api/g/g;->d:I

    .line 47
    return-void
.end method

.method public static declared-synchronized a()Lcom/instagram/api/g/g;
    .locals 2

    .prologue
    .line 123
    const-class v1, Lcom/instagram/api/g/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/api/g/g;->b:Lcom/instagram/api/g/g;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/instagram/api/g/g;

    invoke-direct {v0}, Lcom/instagram/api/g/g;-><init>()V

    sput-object v0, Lcom/instagram/api/g/g;->b:Lcom/instagram/api/g/g;

    .line 127
    :cond_0
    sget-object v0, Lcom/instagram/api/g/g;->b:Lcom/instagram/api/g/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 50
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized b()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    monitor-enter p0

    move v6, v0

    move v2, v1

    move-object v5, v3

    .line 91
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/instagram/api/g/g;->c:[Lcom/instagram/api/g/h;

    array-length v4, v4

    if-ge v6, v4, :cond_3

    .line 92
    iget-object v4, p0, Lcom/instagram/api/g/g;->c:[Lcom/instagram/api/g/h;

    aget-object v4, v4, v6

    .line 93
    if-eqz v4, :cond_6

    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 96
    invoke-static {v4}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F

    move-result v7

    invoke-static {v4}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    .line 97
    invoke-static {v4}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F

    move-result v7

    add-float/2addr v1, v7

    .line 99
    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F

    move-result v7

    invoke-static {v5}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    :cond_0
    move-object v5, v4

    .line 102
    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F

    move-result v7

    invoke-static {v3}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    :cond_2
    move-object v3, v4

    move-object v4, v5

    .line 91
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v4

    goto :goto_0

    .line 108
    :cond_3
    if-nez v0, :cond_4

    .line 109
    const/4 v0, -0x1

    .line 119
    :goto_2
    monitor-exit p0

    return v0

    .line 113
    :cond_4
    const/4 v4, 0x3

    if-lt v0, v4, :cond_5

    .line 114
    :try_start_1
    invoke-static {v5}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F

    move-result v0

    invoke-static {v5}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F

    move-result v4

    mul-float/2addr v0, v4

    invoke-static {v3}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;)F

    move-result v4

    invoke-static {v3}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F

    move-result v6

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    sub-float/2addr v2, v0

    .line 116
    invoke-static {v5}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F

    move-result v0

    invoke-static {v3}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    add-float/2addr v0, v3

    sub-float/2addr v1, v0

    .line 119
    :cond_5
    div-float v0, v2, v1

    float-to-int v0, v0

    goto :goto_2

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move-object v4, v5

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/instagram/api/g/i;)V
    .locals 4
    .parameter

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/instagram/api/g/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/g/g;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/instagram/api/g/g;->d:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/instagram/api/g/g;->d:I

    .line 65
    iget-object v0, p0, Lcom/instagram/api/g/g;->c:[Lcom/instagram/api/g/h;

    iget v1, p0, Lcom/instagram/api/g/g;->d:I

    aget-object v0, v0, v1

    .line 66
    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lcom/instagram/api/g/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/api/g/h;-><init>(B)V

    .line 68
    iget-object v1, p0, Lcom/instagram/api/g/g;->c:[Lcom/instagram/api/g/h;

    iget v2, p0, Lcom/instagram/api/g/g;->d:I

    aput-object v0, v1, v2

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/api/g/i;->j()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x4480

    div-float/2addr v1, v2

    .line 72
    invoke-virtual {p1}, Lcom/instagram/api/g/i;->n()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    .line 74
    invoke-static {v0, v1}, Lcom/instagram/api/g/h;->a(Lcom/instagram/api/g/h;F)F

    .line 77
    div-float/2addr v1, v2

    const/high16 v2, 0x4620

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/api/g/h;->b(Lcom/instagram/api/g/h;F)F

    .line 79
    sget-object v0, Lcom/instagram/api/g/g;->a:Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "latest speed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/instagram/api/g/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
