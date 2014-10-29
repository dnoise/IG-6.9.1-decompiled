.class final Lcom/instagram/o/b/b;
.super Lcom/instagram/common/a/a/j;
.source "AutoUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/o/b/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instagram/o/b/a;


# direct methods
.method constructor <init>(Lcom/instagram/o/b/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/instagram/o/b/b;->b:Lcom/instagram/o/b/a;

    iput p2, p0, Lcom/instagram/o/b/b;->a:I

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/o/b/j;)V
    .locals 3
    .parameter

    .prologue
    .line 87
    invoke-static {}, Lcom/instagram/o/b/a;->d()Ljava/lang/Class;

    .line 89
    iget-object v0, p0, Lcom/instagram/o/b/b;->b:Lcom/instagram/o/b/a;

    invoke-static {v0}, Lcom/instagram/o/b/a;->a(Lcom/instagram/o/b/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/s/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 91
    invoke-static {}, Lcom/instagram/common/s/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/instagram/o/b/j;->a:Lcom/instagram/o/b/k;

    iget-object v0, v0, Lcom/instagram/o/b/k;->b:Lcom/instagram/o/b/f;

    .line 94
    :goto_0
    invoke-virtual {v0}, Lcom/instagram/o/b/f;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 95
    invoke-virtual {v0}, Lcom/instagram/o/b/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/instagram/o/b/a;->d()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    if-ge v1, v2, :cond_2

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/instagram/o/b/b;->b:Lcom/instagram/o/b/a;

    invoke-static {v1, v0}, Lcom/instagram/o/b/a;->a(Lcom/instagram/o/b/a;Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_1
    return-void

    .line 91
    :cond_1
    iget-object v0, p1, Lcom/instagram/o/b/j;->a:Lcom/instagram/o/b/k;

    iget-object v0, v0, Lcom/instagram/o/b/k;->a:Lcom/instagram/o/b/f;

    goto :goto_0

    .line 101
    :cond_2
    iget v0, p0, Lcom/instagram/o/b/b;->a:I

    sget v1, Lcom/instagram/o/b/e;->b:I

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/instagram/o/b/b;->b:Lcom/instagram/o/b/a;

    invoke-static {v0}, Lcom/instagram/o/b/a;->b(Lcom/instagram/o/b/a;)V

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    check-cast p1, Lcom/instagram/o/b/j;

    invoke-direct {p0, p1}, Lcom/instagram/o/b/b;->a(Lcom/instagram/o/b/j;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/o/b/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Lcom/instagram/o/b/a;->d()Ljava/lang/Class;

    .line 110
    return-void
.end method
