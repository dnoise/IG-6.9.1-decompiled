.class public final Lcom/instagram/b/c/a;
.super Ljava/lang/Object;
.source "NavigationTracker.java"


# static fields
.field private static final a:Lcom/instagram/b/c/a;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/instagram/common/analytics/b;

.field private d:Landroid/widget/Toast;

.field private e:J

.field private final f:Lcom/instagram/common/t/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/instagram/b/c/a;

    invoke-direct {v0}, Lcom/instagram/b/c/a;-><init>()V

    sput-object v0, Lcom/instagram/b/c/a;->a:Lcom/instagram/b/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/b/c/a;->b:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/instagram/common/t/b;->a()Lcom/instagram/common/t/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/b/c/a;->f:Lcom/instagram/common/t/b;

    return-void
.end method

.method public static a()Lcom/instagram/b/c/a;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/instagram/b/c/a;->a:Lcom/instagram/b/c/a;

    return-object v0
.end method

.method private a(Lcom/instagram/common/analytics/g;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/instagram/l/a/a;->a()Lcom/instagram/l/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/instagram/b/c/a;->d:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/instagram/b/c/a;->b:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/b/c/a;->d:Landroid/widget/Toast;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/instagram/b/c/a;->d:Landroid/widget/Toast;

    const-string v1, "%s to %s via %s (%s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;

    invoke-virtual {v3}, Lcom/instagram/common/analytics/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-interface {p1}, Lcom/instagram/common/analytics/g;->j_()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;

    const-string v5, "click_point"

    invoke-virtual {v4, v5}, Lcom/instagram/common/analytics/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/instagram/b/c/a;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    const-string v0, "button"

    invoke-virtual {p0, p1, v0}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {p1}, Lcom/instagram/b/b/a;->a(Landroid/content/Context;)Lcom/instagram/common/analytics/g;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Landroid/support/v4/app/k;

    .line 99
    invoke-virtual {p1}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/support/v4/app/s;->g()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/g;ILjava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lcom/instagram/common/analytics/g;)V
    .locals 6
    .parameter

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instagram/b/c/a;->e:J

    sub-long/2addr v0, v2

    .line 115
    iget-object v2, p0, Lcom/instagram/b/c/a;->f:Lcom/instagram/common/t/b;

    iget-object v3, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;

    invoke-virtual {v3}, Lcom/instagram/common/analytics/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;

    const-string v5, "click_point"

    invoke-virtual {v4, v5}, Lcom/instagram/common/analytics/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/instagram/common/t/b;->a(Lcom/instagram/common/analytics/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;

    const-string v3, "dest_module"

    invoke-interface {p1}, Lcom/instagram/common/analytics/g;->j_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "nav_time_taken"

    invoke-virtual {v2, v3, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/common/analytics/b;->a()V

    .line 123
    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/g;J)V

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/instagram/common/analytics/g;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string p3, "button"

    .line 76
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/b/c/a;->e:J

    .line 77
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "navigation"

    invoke-direct {v0, v1, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "click_point"

    invoke-virtual {v0, v1, p3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "nav_depth"

    invoke-virtual {v0, v1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
