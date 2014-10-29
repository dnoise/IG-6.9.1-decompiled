.class final Lcom/instagram/user/userservice/b;
.super Lcom/instagram/common/a/a/j;
.source "UserServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<TResponseType;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/user/userservice/a;


# direct methods
.method private constructor <init>(Lcom/instagram/user/userservice/a;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/instagram/user/userservice/b;->a:Lcom/instagram/user/userservice/a;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/user/userservice/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/instagram/user/userservice/b;-><init>(Lcom/instagram/user/userservice/a;)V

    return-void
.end method

.method private a(Lcom/instagram/api/k/a/d;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/instagram/user/userservice/b;->a:Lcom/instagram/user/userservice/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/instagram/user/userservice/a;->a(Z)V

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/instagram/user/userservice/b;->a:Lcom/instagram/user/userservice/a;

    move-object v0, p1

    check-cast v0, Lcom/instagram/user/userservice/c;

    move-object v1, v0

    invoke-interface {v1}, Lcom/instagram/user/userservice/c;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/instagram/user/userservice/a;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/instagram/user/userservice/b;->a:Lcom/instagram/user/userservice/a;

    check-cast p1, Lcom/instagram/user/userservice/c;

    invoke-interface {p1}, Lcom/instagram/user/userservice/c;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instagram/user/userservice/a;->a(J)V

    .line 79
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    check-cast p1, Lcom/instagram/api/k/a/d;

    invoke-direct {p0, p1}, Lcom/instagram/user/userservice/b;->a(Lcom/instagram/api/k/a/d;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/instagram/user/userservice/b;->a:Lcom/instagram/user/userservice/a;

    invoke-static {v0}, Lcom/instagram/user/userservice/a;->a(Lcom/instagram/user/userservice/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method
