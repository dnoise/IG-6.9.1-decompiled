.class public Lcom/instagram/android/directshare/f/c;
.super Ljava/lang/Object;
.source "InboxUtil.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/instagram/android/directshare/f/c;

    sput-object v0, Lcom/instagram/android/directshare/f/c;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a(Lcom/instagram/feed/d/l;)I
    .locals 4
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ak()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->an()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 30
    sget v0, Lcom/instagram/android/directshare/f/d;->a:I

    .line 36
    :goto_0
    return v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ao()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->an()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget v0, Lcom/instagram/android/directshare/f/d;->c:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/instagram/android/directshare/f/d;->b:I

    goto :goto_0

    .line 36
    :cond_2
    sget v0, Lcom/instagram/android/directshare/f/d;->d:I

    goto :goto_0
.end method

.method static a()J
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lcom/instagram/common/x/a;->a()Lcom/instagram/common/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/x/a;->b()V

    .line 48
    invoke-static {}, Lcom/instagram/android/directshare/f/c;->b()I

    move-result v0

    .line 49
    invoke-static {}, Lcom/instagram/android/directshare/f/c;->a()J

    move-result-wide v1

    .line 50
    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    .line 51
    sget-object v1, Lcom/instagram/android/directshare/f/c;->a:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/instagram/l/b/a;->a(IJ)V

    .line 53
    if-eq v0, p0, :cond_0

    .line 54
    invoke-static {}, Lcom/instagram/android/directshare/f/c;->c()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    sget-object v0, Lcom/instagram/android/directshare/f/c;->a:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    goto :goto_0
.end method

.method public static a(J)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-static {}, Lcom/instagram/common/x/a;->a()Lcom/instagram/common/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/x/a;->b()V

    .line 64
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/instagram/android/directshare/f/c;->a(IJ)V

    .line 65
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/instagram/android/directshare/f/c;->b()I

    move-result v1

    .line 77
    sget v0, Lcom/facebook/av;->action_bar_inbox_new_share_count:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 80
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_2
    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/instagram/android/widget/q;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_3
    const-string v1, "9+"

    goto :goto_1
.end method

.method public static a(Lcom/instagram/f/b/a;)V
    .locals 3
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/instagram/f/b/a;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/f/b/a;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instagram/android/directshare/f/c;->a(IJ)V

    .line 44
    return-void
.end method

.method public static declared-synchronized b()I
    .locals 2

    .prologue
    .line 94
    const-class v1, Lcom/instagram/android/directshare/f/c;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->z()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "INTENT_ACTION_UPDATE_INBOX_BADGE"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    .line 69
    return-void
.end method
