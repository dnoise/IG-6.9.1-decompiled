.class public final Lcom/instagram/user/f/a;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "UserStoreImpl.java"

# interfaces
.implements Lcom/instagram/user/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/instagram/user/c/a;",
        ">;",
        "Lcom/instagram/user/c/i;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/user/f/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/user/f/a;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 21
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/instagram/user/f/a;->b:Z

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/instagram/user/f/a;->b:Z

    .line 108
    return v0
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
    .locals 3
    .parameter

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/user/f/a;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    .line 51
    invoke-virtual {v1, p1}, Lcom/instagram/service/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/instagram/user/f/a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    :goto_0
    return-object v0

    .line 59
    :cond_0
    if-nez v0, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/instagram/user/f/a;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 67
    :goto_1
    invoke-virtual {v1, p1}, Lcom/instagram/service/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v1, p1}, Lcom/instagram/service/a/a;->c(Lcom/instagram/user/c/a;)V

    :cond_1
    move-object v0, p1

    .line 71
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/a;)V

    move-object p1, v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcom/instagram/user/c/a;
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 32
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/instagram/service/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/instagram/user/f/a;->b()Z

    .line 37
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/instagram/user/f/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1
    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/user/f/a;->b:Z

    .line 103
    return-void
.end method

.method public final b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
    .locals 2
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/instagram/user/f/a;->a()V

    .line 93
    invoke-virtual {p0, p1}, Lcom/instagram/user/f/a;->a(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/service/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/service/a/a;->b(Lcom/instagram/user/c/a;)V

    .line 97
    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/user/c/a;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/user/f/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Lcom/instagram/user/c/a;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/user/f/a;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v0

    return-object v0
.end method
