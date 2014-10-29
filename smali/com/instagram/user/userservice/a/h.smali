.class public final Lcom/instagram/user/userservice/a/h;
.super Ljava/lang/Object;
.source "UserAutoCompleteStore.java"


# static fields
.field private static final a:Lcom/instagram/user/userservice/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/instagram/user/userservice/d;

    invoke-direct {v0}, Lcom/instagram/user/userservice/d;-><init>()V

    sput-object v0, Lcom/instagram/user/userservice/a/h;->a:Lcom/instagram/user/userservice/d;

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/instagram/user/userservice/a/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/user/userservice/a/h;->a:Lcom/instagram/user/userservice/d;

    invoke-virtual {v0}, Lcom/instagram/user/userservice/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v1

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/instagram/user/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    const-class v1, Lcom/instagram/user/userservice/a/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/user/userservice/a/h;->a:Lcom/instagram/user/userservice/d;

    invoke-virtual {v0, p0}, Lcom/instagram/user/userservice/d;->a(Lcom/instagram/user/c/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v1

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/CharSequence;Ljava/util/Set;Lcom/android/internal/util/Predicate;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    const-class v1, Lcom/instagram/user/userservice/a/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/user/userservice/a/h;->a:Lcom/instagram/user/userservice/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/instagram/user/userservice/d;->a(Ljava/lang/CharSequence;Ljava/util/Set;Lcom/android/internal/util/Predicate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Lcom/instagram/user/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    const-class v1, Lcom/instagram/user/userservice/a/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/user/userservice/a/h;->a:Lcom/instagram/user/userservice/d;

    invoke-virtual {v0, p0}, Lcom/instagram/user/userservice/d;->b(Lcom/instagram/user/c/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
