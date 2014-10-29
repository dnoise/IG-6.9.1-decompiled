.class public Lcom/facebook/bo;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/facebook/bo;

.field private static volatile d:Landroid/content/Context;

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lcom/facebook/ch;

.field private h:Lcom/facebook/a;

.field private i:Ljava/util/Date;

.field private j:Lcom/facebook/bu;

.field private k:Lcom/facebook/c;

.field private volatile l:Landroid/os/Bundle;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/cc;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/os/Handler;

.field private o:Lcom/facebook/by;

.field private final p:Ljava/lang/Object;

.field private q:Lcom/facebook/cm;

.field private volatile r:Lcom/facebook/cd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/facebook/bo;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/bo;->a:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/bo;->b:Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/facebook/bp;

    invoke-direct {v0}, Lcom/facebook/bp;-><init>()V

    sput-object v0, Lcom/facebook/bo;->e:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cm;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/bo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cm;B)V

    .line 214
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cm;B)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/bo;->i:Ljava/util/Date;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    .line 220
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 221
    invoke-static {p1}, Lcom/facebook/g/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 224
    :cond_0
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-static {p1}, Lcom/facebook/bo;->c(Landroid/content/Context;)V

    .line 228
    if-nez p3, :cond_1

    .line 229
    new-instance p3, Lcom/facebook/cl;

    sget-object v0, Lcom/facebook/bo;->d:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/facebook/cl;-><init>(Landroid/content/Context;)V

    .line 232
    :cond_1
    iput-object p2, p0, Lcom/facebook/bo;->f:Ljava/lang/String;

    .line 233
    iput-object p3, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;

    .line 234
    sget-object v0, Lcom/facebook/ch;->a:Lcom/facebook/ch;

    iput-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bo;->m:Ljava/util/List;

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/bo;->n:Landroid/os/Handler;

    .line 239
    invoke-virtual {p3}, Lcom/facebook/cm;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/facebook/cm;->b(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {v0, v1}, Lcom/facebook/cm;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 243
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 245
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    :cond_2
    invoke-virtual {p3}, Lcom/facebook/cm;->b()V

    .line 256
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a;->a(Ljava/util/List;)Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    .line 258
    :goto_0
    return-void

    .line 252
    :cond_4
    invoke-static {v0}, Lcom/facebook/a;->a(Landroid/os/Bundle;)Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    .line 253
    sget-object v0, Lcom/facebook/ch;->b:Lcom/facebook/ch;

    iput-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/bo;
    .locals 1
    .parameter

    .prologue
    .line 783
    invoke-static {p0}, Lcom/facebook/bo;->b(Landroid/content/Context;)Lcom/facebook/bo;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/facebook/s;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1034
    .line 1036
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1037
    iget v0, p2, Lcom/facebook/s;->a:I

    sget v2, Lcom/facebook/t;->a:I

    if-ne v0, v2, :cond_0

    .line 1038
    iget-object v0, p2, Lcom/facebook/s;->b:Lcom/facebook/a;

    move-object v2, v0

    move-object v0, v1

    .line 1046
    :goto_0
    iput-object v1, p0, Lcom/facebook/bo;->k:Lcom/facebook/c;

    .line 1047
    invoke-direct {p0, v2, v0}, Lcom/facebook/bo;->a(Lcom/facebook/a;Ljava/lang/Exception;)V

    .line 1048
    return-void

    .line 1040
    :cond_0
    new-instance v0, Lcom/facebook/x;

    iget-object v2, p2, Lcom/facebook/s;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/x;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    .line 1042
    :cond_1
    if-nez p1, :cond_2

    .line 1043
    new-instance v0, Lcom/facebook/ab;

    iget-object v2, p2, Lcom/facebook/s;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/ab;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/facebook/bo;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/facebook/a;)V
    .locals 2
    .parameter

    .prologue
    .line 1161
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;

    invoke-virtual {p1}, Lcom/facebook/a;->f()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/cm;->a(Landroid/os/Bundle;)V

    .line 1164
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/a;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const/4 p1, 0x0

    .line 1112
    new-instance p2, Lcom/facebook/z;

    const-string v0, "Invalid access token."

    invoke-direct {p2, v0}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 1116
    :try_start_0
    sget-object v0, Lcom/facebook/bt;->a:[I

    iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-virtual {v2}, Lcom/facebook/ch;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1129
    :goto_0
    :pswitch_0
    monitor-exit v1

    return-void

    .line 1119
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/bo;->b(Lcom/facebook/a;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1125
    :pswitch_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/bo;->c(Lcom/facebook/a;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1116
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static final a(Lcom/facebook/bo;)V
    .locals 2
    .parameter

    .prologue
    .line 750
    sget-object v1, Lcom/facebook/bo;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 751
    :try_start_0
    sget-object v0, Lcom/facebook/bo;->c:Lcom/facebook/bo;

    if-eq p0, v0, :cond_2

    .line 752
    sget-object v0, Lcom/facebook/bo;->c:Lcom/facebook/bo;

    .line 754
    if-eqz v0, :cond_0

    .line 755
    invoke-direct {v0}, Lcom/facebook/bo;->m()V

    .line 758
    :cond_0
    sput-object p0, Lcom/facebook/bo;->c:Lcom/facebook/bo;

    .line 760
    if-eqz v0, :cond_1

    .line 761
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v0}, Lcom/facebook/bo;->b(Ljava/lang/String;)V

    .line 764
    :cond_1
    if-eqz p0, :cond_2

    .line 765
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-static {v0}, Lcom/facebook/bo;->b(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lcom/facebook/bo;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v0}, Lcom/facebook/bo;->b(Ljava/lang/String;)V

    .line 772
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/facebook/bo;ILcom/facebook/s;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/facebook/bo;->a(ILcom/facebook/s;)V

    return-void
.end method

.method private a(Lcom/facebook/bu;)V
    .locals 5
    .parameter

    .prologue
    .line 884
    iget-object v0, p0, Lcom/facebook/bo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/bu;->a(Ljava/lang/String;)V

    .line 888
    invoke-direct {p0}, Lcom/facebook/bo;->p()V

    .line 890
    invoke-static {p1}, Lcom/facebook/bo;->c(Lcom/facebook/bu;)Z

    move-result v0

    .line 892
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/facebook/bu;->a(Lcom/facebook/bu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    invoke-direct {p0, p1}, Lcom/facebook/bo;->e(Lcom/facebook/bu;)Z

    move-result v0

    .line 896
    :cond_0
    if-nez v0, :cond_1

    .line 897
    iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 900
    sget-object v2, Lcom/facebook/bt;->a:[I

    iget-object v3, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-virtual {v3}, Lcom/facebook/ch;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 906
    sget-object v2, Lcom/facebook/ch;->f:Lcom/facebook/ch;

    iput-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 907
    iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    new-instance v3, Lcom/facebook/z;

    const-string v4, "Log in attempt failed."

    invoke-direct {v3, v4}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V

    .line 909
    monitor-exit v1

    .line 911
    :cond_1
    :goto_0
    return-void

    .line 903
    :pswitch_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/facebook/bu;Lcom/facebook/g/p;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1000
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/bu;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    :cond_0
    sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;

    invoke-virtual {v0, p1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1002
    new-instance v0, Lcom/facebook/z;

    const-string v1, "Cannot request publish or manage authorization with no permissions."

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/bu;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1007
    invoke-static {v0}, Lcom/facebook/bo;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1008
    sget-object v2, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;

    invoke-virtual {v2, p1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1009
    new-instance v1, Lcom/facebook/z;

    const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1015
    :cond_3
    sget-object v2, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;

    invoke-virtual {v2, p1}, Lcom/facebook/g/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1016
    sget-object v2, Lcom/facebook/bo;->a:Ljava/lang/String;

    const-string v2, "Should not pass a read permission (%s) to a request for publish or manage authorization"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 1023
    :cond_4
    return-void
.end method

.method private a(Lcom/facebook/ca;Lcom/facebook/g/p;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 914
    invoke-static {p1, p2}, Lcom/facebook/bo;->a(Lcom/facebook/bu;Lcom/facebook/g/p;)V

    .line 915
    invoke-static {p1}, Lcom/facebook/bo;->b(Lcom/facebook/bu;)V

    .line 918
    iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;

    if-eqz v0, :cond_1

    .line 920
    iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Session: an attempt was made to open a session that has a pending request."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V

    .line 922
    monitor-exit v1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 926
    sget-object v0, Lcom/facebook/bt;->a:[I

    iget-object v3, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-virtual {v3}, Lcom/facebook/ch;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 947
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open an already opened session."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 928
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/facebook/ch;->c:Lcom/facebook/ch;

    iput-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 929
    if-nez p1, :cond_2

    .line 930
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "openRequest cannot be null when opening a new Session"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_2
    iput-object p1, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;

    .line 950
    :goto_1
    if-eqz p1, :cond_3

    .line 951
    invoke-virtual {p1}, Lcom/facebook/ca;->a()Lcom/facebook/cc;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/bo;->a(Lcom/facebook/cc;)V

    .line 953
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V

    .line 954
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    sget-object v1, Lcom/facebook/ch;->c:Lcom/facebook/ch;

    if-ne v0, v1, :cond_0

    .line 957
    invoke-direct {p0, p1}, Lcom/facebook/bo;->a(Lcom/facebook/bu;)V

    goto :goto_0

    .line 935
    :pswitch_2
    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/ca;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 936
    invoke-virtual {p1}, Lcom/facebook/ca;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/bo;->e()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/g/t;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 937
    iput-object p1, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;

    .line 940
    :cond_4
    iget-object v0, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;

    if-nez v0, :cond_5

    .line 941
    sget-object v0, Lcom/facebook/ch;->d:Lcom/facebook/ch;

    iput-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    goto :goto_1

    .line 943
    :cond_5
    sget-object v0, Lcom/facebook/ch;->c:Lcom/facebook/ch;

    iput-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 926
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1170
    if-ne p1, p2, :cond_1

    sget-object v0, Lcom/facebook/ch;->e:Lcom/facebook/ch;

    if-eq p1, v0, :cond_1

    if-nez p3, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ch;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a;->a(Ljava/util/List;)Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    .line 1180
    :cond_2
    iget-object v1, p0, Lcom/facebook/bo;->m:Ljava/util/List;

    monitor-enter v1

    .line 1184
    :try_start_0
    new-instance v0, Lcom/facebook/br;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/br;-><init>(Lcom/facebook/bo;Lcom/facebook/ch;Ljava/lang/Exception;)V

    .line 1198
    iget-object v2, p0, Lcom/facebook/bo;->n:Landroid/os/Handler;

    invoke-static {v2, v0}, Lcom/facebook/bo;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1199
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    sget-object v0, Lcom/facebook/bo;->c:Lcom/facebook/bo;

    if-ne p0, v0, :cond_0

    .line 1202
    invoke-virtual {p1}, Lcom/facebook/ch;->a()Z

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/ch;->a()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1203
    invoke-virtual {p2}, Lcom/facebook/ch;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1204
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v0}, Lcom/facebook/bo;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1206
    :cond_3
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v0}, Lcom/facebook/bo;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1067
    invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1068
    if-nez v1, :cond_0

    .line 1071
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1402
    if-nez p0, :cond_1

    .line 1403
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1405
    :goto_0
    return v0

    .line 1403
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1405
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1026
    if-eqz p0, :cond_1

    const-string v0, "publish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/bo;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/facebook/bo;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 863
    new-instance v0, Lcom/facebook/bz;

    invoke-direct {v0, p0}, Lcom/facebook/bz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/bz;->a()Lcom/facebook/bo;

    move-result-object v0

    .line 864
    sget-object v2, Lcom/facebook/ch;->b:Lcom/facebook/ch;

    invoke-virtual {v0}, Lcom/facebook/bo;->b()Lcom/facebook/ch;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/ch;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 865
    invoke-static {v0}, Lcom/facebook/bo;->a(Lcom/facebook/bo;)V

    .line 866
    invoke-virtual {v0, v1}, Lcom/facebook/bo;->a(Lcom/facebook/ca;)V

    .line 869
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/bo;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/bo;->m:Ljava/util/List;

    return-object v0
.end method

.method private static b(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1219
    if-eqz p0, :cond_0

    .line 1220
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1224
    :goto_0
    return-void

    .line 1222
    :cond_0
    invoke-static {}, Lcom/facebook/cj;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b(Lcom/facebook/a;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 1134
    if-eqz p1, :cond_1

    .line 1135
    iput-object p1, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    .line 1136
    invoke-direct {p0, p1}, Lcom/facebook/bo;->a(Lcom/facebook/a;)V

    .line 1138
    sget-object v1, Lcom/facebook/ch;->d:Lcom/facebook/ch;

    iput-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 1142
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;

    .line 1143
    iget-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V

    .line 1144
    return-void

    .line 1139
    :cond_1
    if-eqz p2, :cond_0

    .line 1140
    sget-object v1, Lcom/facebook/ch;->f:Lcom/facebook/ch;

    iput-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    goto :goto_0
.end method

.method private static b(Lcom/facebook/bu;)V
    .locals 5
    .parameter

    .prologue
    .line 988
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/facebook/bu;->a(Lcom/facebook/bu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 990
    invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/al;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 991
    invoke-static {v0}, Lcom/facebook/bo;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    new-instance v0, Lcom/facebook/z;

    const-string v1, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/facebook/bu;->b()Lcom/facebook/cg;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/facebook/al;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1215
    invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 1216
    return-void
.end method

.method static synthetic c(Lcom/facebook/bo;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/bo;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 877
    if-eqz p0, :cond_1

    sget-object v0, Lcom/facebook/bo;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 878
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    sput-object p0, Lcom/facebook/bo;->d:Landroid/content/Context;

    .line 881
    :cond_1
    return-void
.end method

.method private c(Lcom/facebook/a;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 1149
    if-eqz p1, :cond_0

    .line 1150
    iput-object p1, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    .line 1151
    invoke-direct {p0, p1}, Lcom/facebook/bo;->a(Lcom/facebook/a;)V

    .line 1153
    sget-object v1, Lcom/facebook/ch;->e:Lcom/facebook/ch;

    iput-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 1156
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/bo;->j:Lcom/facebook/bu;

    .line 1157
    iget-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V

    .line 1158
    return-void
.end method

.method private static c(Lcom/facebook/bu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1051
    invoke-static {p0}, Lcom/facebook/bo;->d(Lcom/facebook/bu;)Landroid/content/Intent;

    move-result-object v1

    .line 1053
    invoke-static {v1}, Lcom/facebook/bo;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1063
    :goto_0
    return v0

    .line 1058
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/bu;->e()Lcom/facebook/cb;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/bu;->c()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/cb;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    const/4 v0, 0x1

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d(Lcom/facebook/bu;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 1075
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1076
    invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/al;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1077
    invoke-virtual {p0}, Lcom/facebook/bu;->b()Lcom/facebook/cg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/cg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    invoke-virtual {p0}, Lcom/facebook/bu;->f()Lcom/facebook/k;

    move-result-object v1

    .line 1081
    invoke-static {v1}, Lcom/facebook/al;->a(Lcom/facebook/k;)Landroid/os/Bundle;

    move-result-object v1

    .line 1082
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1084
    return-object v0
.end method

.method static synthetic d(Lcom/facebook/bo;)Lcom/facebook/cd;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/bo;->r:Lcom/facebook/cd;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/bo;)Lcom/facebook/cd;
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/bo;->r:Lcom/facebook/cd;

    return-object v0
.end method

.method private e(Lcom/facebook/bu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1088
    new-instance v0, Lcom/facebook/c;

    invoke-direct {v0}, Lcom/facebook/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/bo;->k:Lcom/facebook/c;

    .line 1089
    iget-object v0, p0, Lcom/facebook/bo;->k:Lcom/facebook/c;

    new-instance v1, Lcom/facebook/bq;

    invoke-direct {v1, p0}, Lcom/facebook/bq;-><init>(Lcom/facebook/bo;)V

    invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/r;)V

    .line 1101
    iget-object v0, p0, Lcom/facebook/bo;->k:Lcom/facebook/c;

    invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Landroid/content/Context;)V

    .line 1102
    iget-object v0, p0, Lcom/facebook/bo;->k:Lcom/facebook/c;

    invoke-virtual {p1}, Lcom/facebook/bu;->f()Lcom/facebook/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/k;)V

    .line 1104
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic f(Lcom/facebook/bo;)Lcom/facebook/by;
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/bo;->o:Lcom/facebook/by;

    return-object v0
.end method

.method public static final g()Lcom/facebook/bo;
    .locals 2

    .prologue
    .line 729
    sget-object v1, Lcom/facebook/bo;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 730
    :try_start_0
    sget-object v0, Lcom/facebook/bo;->c:Lcom/facebook/bo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 873
    sget-object v0, Lcom/facebook/bo;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/bo;->d:Landroid/content/Context;

    return-object v0
.end method

.method private l()Ljava/util/Date;
    .locals 2

    .prologue
    .line 334
    iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->b()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private m()V
    .locals 5

    .prologue
    .line 564
    iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 567
    sget-object v2, Lcom/facebook/bt;->a:[I

    iget-object v3, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-virtual {v3}, Lcom/facebook/ch;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 582
    :goto_0
    monitor-exit v1

    return-void

    .line 570
    :pswitch_0
    sget-object v2, Lcom/facebook/ch;->f:Lcom/facebook/ch;

    iput-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 571
    iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    new-instance v3, Lcom/facebook/z;

    const-string v4, "Log in attempt aborted."

    invoke-direct {v3, v4}, Lcom/facebook/z;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 578
    :pswitch_1
    :try_start_1
    sget-object v2, Lcom/facebook/ch;->g:Lcom/facebook/ch;

    iput-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 579
    iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private n()V
    .locals 3

    .prologue
    .line 1233
    const/4 v0, 0x0

    .line 1234
    iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 1235
    :try_start_0
    iget-object v2, p0, Lcom/facebook/bo;->r:Lcom/facebook/cd;

    if-nez v2, :cond_0

    .line 1236
    new-instance v0, Lcom/facebook/cd;

    invoke-direct {v0, p0}, Lcom/facebook/cd;-><init>(Lcom/facebook/bo;)V

    .line 1237
    iput-object v0, p0, Lcom/facebook/bo;->r:Lcom/facebook/cd;

    .line 1239
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {v0}, Lcom/facebook/cd;->a()V

    .line 1244
    :cond_1
    return-void

    .line 1239
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private o()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1247
    iget-object v1, p0, Lcom/facebook/bo;->r:Lcom/facebook/cd;

    if-eqz v1, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return v0

    .line 1253
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1255
    iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-virtual {v2}, Lcom/facebook/ch;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    invoke-virtual {v2}, Lcom/facebook/a;->d()Lcom/facebook/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/bo;->i:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    invoke-virtual {v3}, Lcom/facebook/a;->e()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1258
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 1465
    const/4 v0, 0x0

    .line 1466
    monitor-enter p0

    .line 1467
    :try_start_0
    iget-object v1, p0, Lcom/facebook/bo;->o:Lcom/facebook/by;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/facebook/cj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    iget-object v1, p0, Lcom/facebook/bo;->f:Ljava/lang/String;

    .line 1472
    if-eqz v1, :cond_0

    .line 1473
    new-instance v0, Lcom/facebook/by;

    sget-object v2, Lcom/facebook/bo;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/by;-><init>(Lcom/facebook/bo;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/bo;->o:Lcom/facebook/by;

    .line 1476
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    if-eqz v0, :cond_1

    .line 1479
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/by;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1481
    :cond_1
    return-void

    .line 1476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 629
    iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 632
    sget-object v2, Lcom/facebook/bt;->a:[I

    iget-object v3, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-virtual {v3}, Lcom/facebook/ch;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 641
    sget-object v0, Lcom/facebook/bo;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "refreshToken ignored in state "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 642
    monitor-exit v1

    .line 648
    :goto_0
    return-void

    .line 634
    :pswitch_0
    sget-object v2, Lcom/facebook/ch;->e:Lcom/facebook/ch;

    iput-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    .line 635
    iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/bo;->a(Lcom/facebook/ch;Lcom/facebook/ch;Ljava/lang/Exception;)V

    .line 644
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    invoke-static {v0, p1}, Lcom/facebook/a;->a(Lcom/facebook/a;Landroid/os/Bundle;)Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    .line 645
    iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;

    iget-object v2, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    invoke-virtual {v2}, Lcom/facebook/a;->f()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/cm;->a(Landroid/os/Bundle;)V

    .line 648
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 632
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/facebook/ca;)V
    .locals 1
    .parameter

    .prologue
    .line 385
    sget-object v0, Lcom/facebook/g/p;->a:Lcom/facebook/g/p;

    invoke-direct {p0, p1, v0}, Lcom/facebook/bo;->a(Lcom/facebook/ca;Lcom/facebook/g/p;)V

    .line 386
    return-void
.end method

.method public final a(Lcom/facebook/cc;)V
    .locals 2
    .parameter

    .prologue
    .line 603
    iget-object v1, p0, Lcom/facebook/bo;->m:Ljava/util/List;

    monitor-enter v1

    .line 604
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/bo;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/facebook/bo;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
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

.method final a(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/facebook/bo;->i:Ljava/util/Date;

    .line 1278
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-virtual {v0}, Lcom/facebook/ch;->a()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Lcom/facebook/ch;
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/facebook/ca;)V
    .locals 1
    .parameter

    .prologue
    .line 415
    sget-object v0, Lcom/facebook/g/p;->b:Lcom/facebook/g/p;

    invoke-direct {p0, p1, v0}, Lcom/facebook/bo;->a(Lcom/facebook/ca;Lcom/facebook/g/p;)V

    .line 416
    return-void
.end method

.method public final b(Lcom/facebook/cc;)V
    .locals 2
    .parameter

    .prologue
    .line 616
    iget-object v1, p0, Lcom/facebook/bo;->m:Ljava/util/List;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/facebook/bo;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 618
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/bo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v1, p0, Lcom/facebook/bo;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->c()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "otherObj"

    .prologue
    const/4 v0, 0x0

    .line 1390
    instance-of v1, p1, Lcom/facebook/bo;

    if-nez v1, :cond_1

    .line 1395
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 1393
    .restart local p1
    :cond_1
    check-cast p1, Lcom/facebook/bo;

    .line 1395
    .end local p1
    iget-object v1, p1, Lcom/facebook/bo;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/bo;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/bo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/facebook/bo;->l:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/facebook/bo;->l:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/facebook/bo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    iget-object v2, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-static {v1, v2}, Lcom/facebook/bo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p1}, Lcom/facebook/bo;->l()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/bo;->l()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/bo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/facebook/bo;->q:Lcom/facebook/cm;

    invoke-virtual {v0}, Lcom/facebook/cm;->b()V

    .line 593
    :cond_0
    sget-object v0, Lcom/facebook/bo;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/g/t;->b(Landroid/content/Context;)V

    .line 594
    invoke-direct {p0}, Lcom/facebook/bo;->m()V

    .line 595
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1385
    const/4 v0, 0x0

    return v0
.end method

.method final i()V
    .locals 1

    .prologue
    .line 1227
    invoke-direct {p0}, Lcom/facebook/bo;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    invoke-direct {p0}, Lcom/facebook/bo;->n()V

    .line 1230
    :cond_0
    return-void
.end method

.method final j()Lcom/facebook/a;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Session state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/bo;->g:Lcom/facebook/ch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/bo;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/bo;->h:Lcom/facebook/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/bo;->f:Ljava/lang/String;

    goto :goto_1
.end method
