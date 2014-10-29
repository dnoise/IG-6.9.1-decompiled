.class public final Lcom/instagram/common/g/b/c;
.super Ljava/lang/Object;
.source "CacheRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/instagram/common/g/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/instagram/common/g/b/k;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/instagram/common/g/b/c;->c:Z

    .line 15
    iput-boolean v0, p0, Lcom/instagram/common/g/b/c;->d:Z

    .line 16
    iput-boolean v0, p0, Lcom/instagram/common/g/b/c;->e:Z

    .line 19
    iput-object p1, p0, Lcom/instagram/common/g/b/c;->a:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instagram/common/g/b/c;->b:Ljava/lang/ref/WeakReference;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/g/b/c;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/g/b/c;->d:Z

    .line 30
    return-object p0
.end method

.method public final a(Z)Lcom/instagram/common/g/b/c;
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/instagram/common/g/b/c;->c:Z

    .line 25
    return-object p0
.end method

.method public final b(Z)Lcom/instagram/common/g/b/c;
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/instagram/common/g/b/c;->e:Z

    .line 35
    return-object p0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/instagram/common/g/b/h;->a()Lcom/instagram/common/g/b/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/common/g/b/h;->a(Lcom/instagram/common/g/b/c;)V

    .line 40
    return-void
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/common/g/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method final d()Lcom/instagram/common/g/b/k;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/common/g/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/g/b/k;

    return-object v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/instagram/common/g/b/c;->c:Z

    return v0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/instagram/common/g/b/c;->d:Z

    return v0
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/instagram/common/g/b/c;->e:Z

    return v0
.end method
