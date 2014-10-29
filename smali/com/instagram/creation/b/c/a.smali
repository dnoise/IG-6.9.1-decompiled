.class public final Lcom/instagram/creation/b/c/a;
.super Ljava/lang/Object;
.source "PendingMediaManager.java"


# static fields
.field private static final a:Lcom/instagram/creation/b/d/a;

.field private static b:Lcom/instagram/creation/b/d/c;

.field private static c:Z

.field private static d:Lcom/instagram/creation/b/c/a;


# instance fields
.field private final e:Lcom/instagram/common/y/b/a;

.field private final f:Ljava/lang/Object;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/instagram/common/y/c/d;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Lcom/instagram/creation/video/j/b;

.field private volatile m:Landroid/os/PowerManager$WakeLock;

.field private n:Lcom/instagram/creation/b/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/creation/b/c/a;->a:Lcom/instagram/creation/b/d/a;

    .line 91
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    sput-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/creation/b/c/a;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {}, Lcom/instagram/common/y/b/a;->a()Lcom/instagram/common/y/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->e:Lcom/instagram/common/y/b/a;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->f:Ljava/lang/Object;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    .line 153
    invoke-static {}, Lcom/instagram/common/y/c/e;->a()Lcom/instagram/common/y/c/e;

    move-result-object v0

    const-string v1, "PendingMedia"

    invoke-virtual {v0, v1}, Lcom/instagram/common/y/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/y/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/y/c/e;->c()Lcom/instagram/common/y/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->h:Lcom/instagram/common/y/c/d;

    .line 154
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->i:Ljava/util/List;

    .line 155
    new-instance v0, Lcom/instagram/creation/b/c/d;

    invoke-direct {v0, p1}, Lcom/instagram/creation/b/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    .line 156
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/instagram/creation/b/c/a;
    .locals 2
    .parameter

    .prologue
    .line 159
    const-class v1, Lcom/instagram/creation/b/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/creation/b/c/a;->d:Lcom/instagram/creation/b/c/a;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/instagram/creation/b/c/a;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/creation/b/c/a;->d:Lcom/instagram/creation/b/c/a;

    .line 162
    :cond_0
    sget-object v0, Lcom/instagram/creation/b/c/a;->d:Lcom/instagram/creation/b/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/instagram/creation/b/c/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/creation/b/c/a;Lcom/instagram/creation/b/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->h(Lcom/instagram/creation/b/a/b;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/instagram/creation/b/c/c;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/instagram/creation/b/c/c;->a(Lcom/instagram/creation/b/c/c;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->g(Z)V

    .line 167
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->h:Lcom/instagram/common/y/c/d;

    invoke-virtual {v0, p1}, Lcom/instagram/common/y/c/d;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/instagram/feed/d/l;Lcom/instagram/creation/b/a/b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 620
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/feed/d/l;->a(Landroid/net/Uri;)V

    .line 624
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/instagram/creation/b/a/b;->g(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instagram/creation/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/feed/d/l;->f(Ljava/lang/String;)V

    .line 635
    :cond_0
    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->P()Z

    move-result v0

    if-nez v0, :cond_3

    .line 636
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->q()V

    .line 639
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 641
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/user/c/i;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 646
    :goto_0
    invoke-static {}, Lcom/instagram/creation/b/c/a;->h()V

    .line 657
    :goto_1
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    invoke-static {}, Lcom/instagram/creation/photo/c/g;->d()V

    .line 660
    :cond_1
    return-void

    .line 643
    :cond_2
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->G()V

    goto :goto_0

    .line 649
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/instagram/user/userservice/b/f;->b(J)V

    .line 652
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    const-class v2, Lcom/instagram/user/userservice/UserService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 653
    const-string v1, "suggestions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 664
    new-instance v0, Landroid/content/Intent;

    const-string v1, "PendingMediaManager.BROADCAST_INTENT_CHECKPOINT_REQUIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    const-string v1, "checkpointUrl"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string v1, "shouldShowWebviewCancelButton"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 668
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 200
    sget-boolean v1, Lcom/instagram/creation/b/c/a;->c:Z

    if-eqz v1, :cond_0

    .line 201
    sput-boolean v0, Lcom/instagram/creation/b/c/a;->c:Z

    .line 202
    const/4 v0, 0x1

    .line 204
    :cond_0
    return v0
.end method

.method public static b(Lcom/instagram/creation/b/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 691
    sget-object v0, Lcom/instagram/creation/b/c/a;->a:Lcom/instagram/creation/b/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->b()V

    .line 692
    sget-object v0, Lcom/instagram/creation/b/c/a;->a:Lcom/instagram/creation/b/d/a;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;Lcom/instagram/creation/b/a/b;)V

    .line 693
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    .line 694
    return-void
.end method

.method static synthetic d()Lcom/instagram/creation/b/d/c;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    return-object v0
.end method

.method private e()Landroid/os/PowerManager$WakeLock;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->m:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "PendingMediaManager.WakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->m:Landroid/os/PowerManager$WakeLock;

    .line 178
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->m:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->m:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->e()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->e()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 188
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->e()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->e()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static h()V
    .locals 1

    .prologue
    .line 671
    const-string v0, "PendingMediaManager.BROADCAST_INTENT_NEW_MEDIA"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    .line 672
    return-void
.end method

.method private h(Lcom/instagram/creation/b/a/b;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/instagram/creation/b/c/a;->j:Z

    .line 209
    iput-boolean v0, p0, Lcom/instagram/creation/b/c/a;->k:Z

    .line 211
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    .line 212
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->e:Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v0

    .line 215
    sget-object v3, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v3}, Lcom/instagram/creation/b/d/c;->c()V

    .line 217
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->i(Lcom/instagram/creation/b/a/b;)V

    .line 221
    iget-boolean v3, p0, Lcom/instagram/creation/b/c/a;->j:Z

    if-eqz v3, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->i(Lcom/instagram/creation/b/a/b;)V

    .line 225
    :cond_0
    sget-object v3, Lcom/instagram/creation/b/c/a;->a:Lcom/instagram/creation/b/d/a;

    invoke-virtual {v3}, Lcom/instagram/creation/b/d/a;->d()V

    .line 227
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v3

    .line 228
    iget-object v4, p0, Lcom/instagram/creation/b/c/a;->e:Lcom/instagram/common/y/b/a;

    invoke-static {}, Lcom/instagram/common/y/b/a;->c()J

    move-result-wide v4

    .line 229
    sub-long/2addr v4, v0

    .line 230
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/b/a/d;Lcom/instagram/creation/b/a/d;J)V

    .line 235
    return-void
.end method

.method private i(Lcom/instagram/creation/b/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->n()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_1

    .line 239
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->j(Lcom/instagram/creation/b/a/b;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->n()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_0

    .line 241
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->k(Lcom/instagram/creation/b/a/b;)V

    goto :goto_0
.end method

.method private j(Lcom/instagram/creation/b/a/b;)V
    .locals 4
    .parameter

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    sget-object v1, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->A()Lcom/instagram/creation/b/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :try_start_0
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "upload_photo"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->q(Lcom/instagram/creation/b/a/b;)V

    .line 251
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "upload_photo"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->A()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_1

    .line 261
    :try_start_1
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "configure_media"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->r(Lcom/instagram/creation/b/a/b;)V

    .line 263
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "configure_media"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :cond_1
    :goto_1
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Photo upload failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 254
    const-string v1, "PendingMediaManager"

    const-string v2, "Media failed upload"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 264
    :catch_1
    move-exception v0

    .line 265
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed on configure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 266
    const-string v1, "PendingMediaManager"

    const-string v2, "Media failed configure"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private k(Lcom/instagram/creation/b/a/b;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 275
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v2, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/instagram/creation/b/a/d;->e:Lcom/instagram/creation/b/a/d;

    sget-object v2, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    sget-object v3, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-static {v0, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->A()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->D()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/j;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/j;->a()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 282
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/List;)V

    .line 283
    sget-object v0, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    .line 286
    :cond_1
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v2, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    sget-object v2, Lcom/instagram/creation/b/a/d;->e:Lcom/instagram/creation/b/a/d;

    sget-object v3, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    sget-object v4, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-static {v0, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->A()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    :try_start_0
    invoke-static {p1}, Lcom/instagram/creation/b/c/a;->l(Lcom/instagram/creation/b/a/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v2, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    if-ne v0, v2, :cond_9

    sget-object v0, Lcom/instagram/creation/b/a/d;->e:Lcom/instagram/creation/b/a/d;

    sget-object v2, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    sget-object v3, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-static {v0, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->A()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 306
    :try_start_1
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 309
    :cond_3
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->m(Lcom/instagram/creation/b/a/b;)Z

    move-result v0

    .line 313
    :goto_1
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 314
    if-eqz v0, :cond_5

    const-string v0, "Video canceled"

    .line 315
    :goto_2
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    invoke-virtual {v1, p1, v0}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 316
    const-string v1, "PendingMediaManager"

    invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 373
    :cond_4
    :goto_3
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    iget-object v2, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    const-string v3, "Video Upload URL request failed"

    invoke-virtual {v2, p1, v3}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 297
    const-string v2, "PendingMediaManager"

    const-string v3, "Media failed new media request"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 314
    :cond_5
    :try_start_2
    const-string v0, "Could not render video"

    goto :goto_2

    .line 321
    :cond_6
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/instagram/creation/video/c/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 324
    const-string v0, "video/x-matroska"

    .line 325
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 326
    const-string v0, "video/mp4"

    .line 328
    :cond_7
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instagram/creation/base/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_8
    new-instance v0, Lcom/instagram/creation/b/c/e;

    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    invoke-direct {v0, v1, v2}, Lcom/instagram/creation/b/c/e;-><init>(Lcom/instagram/common/a/b/a;Lcom/instagram/creation/b/c/d;)V

    .line 332
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v1

    const-string v2, "upload_video"

    invoke-virtual {v1, v2}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, p1}, Lcom/instagram/creation/b/c/e;->a(Lcom/instagram/creation/b/a/b;)I

    move-result v0

    .line 334
    sget v1, Lcom/instagram/creation/b/c/h;->b:I

    if-ne v0, v1, :cond_b

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/b/c/a;->j:Z

    .line 336
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    const-string v1, "All video upload URLs expired"

    invoke-virtual {v0, p1, v1}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 347
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->e:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_a

    sget-object v0, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    sget-object v1, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->A()Lcom/instagram/creation/b/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 351
    :try_start_3
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "upload_cover_photo"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->q(Lcom/instagram/creation/b/a/b;)V

    .line 353
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "upload_cover_photo"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 362
    :cond_a
    :goto_5
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->A()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_4

    .line 365
    :try_start_4
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "configure_media"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->r(Lcom/instagram/creation/b/a/b;)V

    .line 367
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "configure_media"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 368
    :catch_1
    move-exception v0

    .line 369
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed on configure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 370
    const-string v1, "PendingMediaManager"

    const-string v2, "Media failed configure"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 337
    :cond_b
    :try_start_5
    sget v1, Lcom/instagram/creation/b/c/h;->a:I

    if-ne v0, v1, :cond_9

    .line 338
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "upload_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4

    .line 341
    :catch_2
    move-exception v0

    .line 342
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 343
    const-string v1, "PendingMediaManager"

    const-string v2, "Media failed video render/upload"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 354
    :catch_3
    move-exception v0

    .line 355
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cover photo upload failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 358
    const-string v1, "PendingMediaManager"

    const-string v2, "Media failed cover photo upload"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method

.method private static l(Lcom/instagram/creation/b/a/b;)V
    .locals 4
    .parameter

    .prologue
    .line 376
    new-instance v0, Lcom/instagram/creation/b/c/a/c;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/c/a/c;-><init>(Lcom/instagram/creation/b/a/b;)V

    .line 377
    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 383
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v1, Lcom/instagram/creation/b/c/b/a;

    invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2, v0, v3}, Lcom/instagram/service/b/a;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-direct {v1, v0}, Lcom/instagram/creation/b/c/b/a;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 387
    invoke-virtual {v1}, Lcom/instagram/creation/b/c/b/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/List;)V

    .line 388
    sget-object v0, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    .line 390
    sget-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V

    .line 392
    :cond_0
    return-void
.end method

.method private m(Lcom/instagram/creation/b/a/b;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 398
    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->f()V

    .line 399
    invoke-static {}, Lcom/instagram/creation/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->n(Lcom/instagram/creation/b/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->g()V

    .line 410
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/j/b;->b()Z

    move-result v0

    .line 411
    iput-object v2, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    .line 414
    sget-object v1, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v1}, Lcom/instagram/creation/b/d/c;->c()V

    .line 416
    return v0

    .line 401
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/instagram/creation/c/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->p(Lcom/instagram/creation/b/a/b;)I

    move-result v0

    sget v1, Lcom/instagram/creation/video/g/e/b;->d:I

    if-ne v0, v1, :cond_0

    .line 403
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->o(Lcom/instagram/creation/b/a/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->g()V

    .line 410
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    invoke-interface {v1}, Lcom/instagram/creation/video/j/b;->b()Z

    .line 411
    iput-object v2, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    throw v0

    .line 406
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->o(Lcom/instagram/creation/b/a/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private n(Lcom/instagram/creation/b/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 421
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "render_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;

    move-result-object v0

    .line 423
    new-instance v1, Lcom/instagram/creation/video/j/e;

    iget-object v2, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Lcom/instagram/creation/video/j/e;-><init>(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V

    .line 424
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {v1}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 425
    iput-object v1, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    .line 426
    invoke-virtual {v1}, Lcom/instagram/creation/video/j/e;->j()V

    .line 427
    invoke-virtual {v1}, Lcom/instagram/creation/video/j/e;->G_()V

    .line 428
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "render_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private o(Lcom/instagram/creation/b/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 433
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "render_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;

    move-result-object v0

    .line 435
    new-instance v1, Lcom/instagram/creation/video/j/d;

    iget-object v2, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Lcom/instagram/creation/video/j/d;-><init>(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V

    iput-object v1, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    .line 436
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/j/b;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->run()V

    .line 437
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "render_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method private p(Lcom/instagram/creation/b/a/b;)I
    .locals 3
    .parameter

    .prologue
    .line 441
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "render_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;

    move-result-object v0

    .line 443
    new-instance v1, Lcom/instagram/creation/video/g/e/a;

    invoke-direct {v1, p1}, Lcom/instagram/creation/video/g/e/a;-><init>(Lcom/instagram/creation/b/a/b;)V

    .line 444
    iput-object v1, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    .line 445
    iget-object v2, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/instagram/creation/video/g/e/a;->a(Landroid/content/Context;Lcom/instagram/creation/video/e/c;)I

    move-result v0

    .line 446
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v1

    const-string v2, "render_video"

    invoke-virtual {v1, v2}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    .line 447
    return v0
.end method

.method private q(Lcom/instagram/creation/b/a/b;)V
    .locals 4
    .parameter

    .prologue
    .line 470
    const/4 v1, 0x0

    .line 473
    :try_start_0
    new-instance v0, Lcom/instagram/creation/b/c/a/e;

    invoke-direct {v0, p1}, Lcom/instagram/creation/b/c/a/e;-><init>(Lcom/instagram/creation/b/a/b;)V

    .line 474
    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v2

    new-instance v3, Lcom/instagram/creation/b/c/b;

    invoke-direct {v3, p0, p1}, Lcom/instagram/creation/b/c/b;-><init>(Lcom/instagram/creation/b/c/a;Lcom/instagram/creation/b/a/b;)V

    invoke-virtual {v2, v0, v3}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    .line 481
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_6

    .line 484
    :cond_0
    const-string v0, "PendingMediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad response from server "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->n()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v2, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v2, :cond_3

    .line 486
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Photo upload failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 493
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/instagram/creation/b/c/a;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :goto_2
    if-eqz v1, :cond_2

    .line 502
    :try_start_1
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    :cond_2
    :goto_3
    return-void

    .line 487
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->n()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v2, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v0, v2, :cond_1

    .line 488
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cover photo upload failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 502
    :try_start_3
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 504
    :cond_4
    :goto_4
    throw v0

    .line 493
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 495
    :cond_6
    :try_start_4
    sget-object v0, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    .line 496
    sget-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_4

    .line 504
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private r(Lcom/instagram/creation/b/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 511
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/h/a/a;->b(Ljava/lang/String;)V

    .line 513
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->s(Lcom/instagram/creation/b/a/b;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 515
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v1

    sget-object v2, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-ne v1, v2, :cond_0

    .line 516
    invoke-direct {p0, v0, p1}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/creation/b/a/b;)V

    .line 518
    :cond_0
    return-void
.end method

.method private s(Lcom/instagram/creation/b/a/b;)Lcom/instagram/feed/d/l;
    .locals 14
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 521
    invoke-static {p1}, Lcom/instagram/creation/b/c/a;->t(Lcom/instagram/creation/b/a/b;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    .line 527
    :try_start_0
    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v8

    .line 529
    if-eqz v8, :cond_e

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 530
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 532
    :try_start_1
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 533
    sget-object v0, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, v9}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v10

    .line 537
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 538
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 539
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v6, v2

    move-object v7, v2

    .line 541
    :cond_0
    :goto_0
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v12

    sget-object v13, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v12, v13, :cond_7

    .line 542
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v12

    .line 544
    const-string v13, "media"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 545
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 546
    invoke-static {v10}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/l;

    move-result-object v2

    goto :goto_0

    .line 547
    :cond_1
    const-string v13, "message"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 548
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 549
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 550
    :cond_2
    const-string v13, "checkpoint_url"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 551
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 552
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 553
    :cond_3
    const-string v13, "lock"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 554
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 555
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1

    .line 556
    :cond_5
    const-string v13, "feedback_required"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 557
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 558
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 559
    :cond_6
    if-eqz v12, :cond_0

    .line 560
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 561
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v0

    .line 598
    :goto_2
    :try_start_2
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 600
    :goto_3
    throw v0

    .line 565
    :cond_7
    :try_start_3
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->close()V

    .line 566
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 568
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_c

    .line 569
    :cond_8
    const-string v3, "PendingMediaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Failure response on configure: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v3, "checkpoint_required"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 573
    iget-object v3, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    const-string v4, "Failed on configure: checkpoint required"

    invoke-virtual {v3, p1, v4}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v6, v0}, Lcom/instagram/creation/b/c/a;->a(Ljava/lang/String;Z)V

    .line 592
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "feedback_required"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 593
    :cond_9
    invoke-static {v11}, Lcom/instagram/g/c;->a(Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 598
    :cond_a
    :goto_5
    :try_start_4
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 604
    :goto_6
    return-object v2

    .line 578
    :cond_b
    :try_start_5
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed on configure: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    goto :goto_4

    .line 583
    :cond_c
    if-eqz v7, :cond_d

    const-string v0, "media_needs_reupload"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 584
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    const-string v3, "Failed on configure: Media needs reupload"

    invoke-virtual {v0, p1, v3}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    .line 587
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->u(Lcom/instagram/creation/b/a/b;)V

    goto :goto_4

    .line 589
    :cond_d
    sget-object v0, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 600
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v1

    goto/16 :goto_3

    .line 597
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :cond_e
    move-object v1, v2

    goto :goto_5
.end method

.method private static t(Lcom/instagram/creation/b/a/b;)Lcom/instagram/common/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Lcom/instagram/f/a/a/g;

    invoke-direct {v0, p0}, Lcom/instagram/f/a/a/g;-><init>(Lcom/instagram/creation/b/a/b;)V

    .line 615
    :goto_0
    return-object v0

    .line 613
    :cond_0
    new-instance v0, Lcom/instagram/creation/b/c/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/c/a/b;-><init>(Lcom/instagram/creation/b/a/b;)V

    goto :goto_0
.end method

.method private u(Lcom/instagram/creation/b/a/b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 715
    sget-object v0, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    .line 716
    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    .line 717
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/creation/b/a/b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 680
    sget-object v0, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    .line 681
    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    .line 682
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/j/b;->c()V

    .line 455
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/j/b;->G_()V

    .line 461
    :cond_0
    return-void
.end method

.method public final c(Lcom/instagram/creation/b/a/b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 697
    sget-object v0, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    .line 698
    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    .line 699
    return-void
.end method

.method public final d(Lcom/instagram/creation/b/a/b;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 702
    sget-object v0, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    .line 703
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->f(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    if-eq v0, v1, :cond_0

    .line 708
    sget-object v0, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    .line 711
    :cond_0
    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v2, p1, v2}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    .line 712
    return-void
.end method

.method public final e(Lcom/instagram/creation/b/a/b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 723
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/creation/b/c/a;->c:Z

    .line 727
    :cond_0
    sget-object v0, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    .line 728
    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    .line 731
    sget-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    .line 732
    return-void
.end method

.method public final f(Lcom/instagram/creation/b/a/b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 735
    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    .line 736
    return-void
.end method

.method public final g(Lcom/instagram/creation/b/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 739
    new-instance v0, Lcom/instagram/creation/b/c/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    .line 740
    return-void
.end method
