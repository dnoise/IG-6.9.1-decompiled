.class public final Lcom/instagram/common/analytics/y;
.super Ljava/lang/Object;
.source "ImmediateActiveSecondReporter.java"


# instance fields
.field private final a:Lcom/instagram/common/y/b/a;

.field private final b:Lcom/instagram/common/analytics/z;

.field private c:J

.field private volatile d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/instagram/common/y/b/a;->a()Lcom/instagram/common/y/b/a;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/z;

    invoke-direct {v1}, Lcom/instagram/common/analytics/z;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/instagram/common/analytics/y;-><init>(Lcom/instagram/common/y/b/a;Lcom/instagram/common/analytics/z;)V

    .line 47
    iget-object v0, p0, Lcom/instagram/common/analytics/y;->a:Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/common/analytics/y;->d:J

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/instagram/common/y/b/a;Lcom/instagram/common/analytics/z;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/common/analytics/y;->c:J

    .line 37
    iput-object p1, p0, Lcom/instagram/common/analytics/y;->a:Lcom/instagram/common/y/b/a;

    .line 38
    iput-object p2, p0, Lcom/instagram/common/analytics/y;->b:Lcom/instagram/common/analytics/z;

    .line 40
    iget-object v0, p0, Lcom/instagram/common/analytics/y;->a:Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/common/analytics/y;->d:J

    .line 41
    return-void
.end method

.method private static a(JLcom/instagram/common/analytics/aa;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 67
    iget-wide v0, p2, Lcom/instagram/common/analytics/aa;->b:J

    iget-wide v2, p2, Lcom/instagram/common/analytics/aa;->a:J

    rem-long v2, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Lcom/instagram/common/analytics/b;
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v0, 0x0

    .line 80
    div-long v1, p1, v5

    .line 82
    iget-wide v3, p0, Lcom/instagram/common/analytics/y;->c:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    iget-wide v3, p0, Lcom/instagram/common/analytics/y;->c:J

    mul-long/2addr v3, v5

    .line 87
    iput-wide v1, p0, Lcom/instagram/common/analytics/y;->c:J

    .line 89
    iget-object v5, p0, Lcom/instagram/common/analytics/y;->b:Lcom/instagram/common/analytics/z;

    invoke-virtual {v5, p3}, Lcom/instagram/common/analytics/z;->a(Ljava/lang/String;)Lcom/instagram/common/analytics/aa;

    move-result-object v5

    .line 92
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/instagram/common/analytics/aa;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v1, v2, v5}, Lcom/instagram/common/analytics/y;->a(JLcom/instagram/common/analytics/aa;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "immediate_active_seconds"

    invoke-static {}, Lcom/instagram/common/t/b;->a()Lcom/instagram/common/t/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/common/t/b;->b()Lcom/instagram/common/analytics/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "activity_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "last_activity_time"

    invoke-virtual {v0, v1, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "last_foreground_time"

    iget-wide v2, p0, Lcom/instagram/common/analytics/y;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/instagram/common/analytics/y;->b:Lcom/instagram/common/analytics/z;

    invoke-virtual {v0}, Lcom/instagram/common/analytics/z;->a()V

    .line 179
    return-void
.end method
