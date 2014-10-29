.class final Lcom/instagram/common/a/a/h;
.super Ljava/lang/Object;
.source "LoaderRequestPerformer.java"

# interfaces
.implements Landroid/support/v4/app/ao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType::",
        "Lcom/instagram/common/a/a/m;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/ao",
        "<",
        "Lcom/instagram/common/l/a/e",
        "<TResponseType;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/common/a/a/g;

.field private final b:I

.field private final c:Lcom/instagram/common/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/a/a/a",
            "<TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/instagram/common/a/a/g;Lcom/instagram/common/a/a/a;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/a/a/a",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/instagram/common/a/a/h;->a:Lcom/instagram/common/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    iput v0, p0, Lcom/instagram/common/a/a/h;->b:I

    .line 45
    iput-object p2, p0, Lcom/instagram/common/a/a/h;->c:Lcom/instagram/common/a/a/a;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/a/a/g;Lcom/instagram/common/a/a/a;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/instagram/common/a/a/h;-><init>(Lcom/instagram/common/a/a/g;Lcom/instagram/common/a/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/a/a/h;)Lcom/instagram/common/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/common/a/a/h;->c:Lcom/instagram/common/a/a/a;

    return-object v0
.end method

.method private a(Landroid/support/v4/app/an;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/instagram/common/a/a/h;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/support/v4/app/an;->a(ILandroid/os/Bundle;Landroid/support/v4/app/ao;)Landroid/support/v4/a/c;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/a/a/h;Landroid/support/v4/app/an;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/instagram/common/a/a/h;->a(Landroid/support/v4/app/an;)V

    return-void
.end method

.method private a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/common/a/a/h;->c:Lcom/instagram/common/a/a/a;

    invoke-virtual {v0, p1}, Lcom/instagram/common/a/a/a;->a(Lcom/instagram/common/l/a/e;)V

    .line 98
    iget-object v0, p0, Lcom/instagram/common/a/a/h;->a:Lcom/instagram/common/a/a/g;

    invoke-static {v0}, Lcom/instagram/common/a/a/g;->b(Lcom/instagram/common/a/a/g;)Landroid/support/v4/app/an;

    move-result-object v0

    iget v1, p0, Lcom/instagram/common/a/a/h;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->a(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/support/v4/a/c;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/instagram/common/a/a/h;->c:Lcom/instagram/common/a/a/a;

    invoke-virtual {v0}, Lcom/instagram/common/a/a/a;->i()V

    .line 56
    new-instance v0, Lcom/instagram/common/a/a/i;

    iget-object v1, p0, Lcom/instagram/common/a/a/h;->a:Lcom/instagram/common/a/a/g;

    invoke-static {v1}, Lcom/instagram/common/a/a/g;->a(Lcom/instagram/common/a/a/g;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/common/a/a/i;-><init>(Lcom/instagram/common/a/a/h;Landroid/content/Context;)V

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    check-cast p2, Lcom/instagram/common/l/a/e;

    invoke-direct {p0, p2}, Lcom/instagram/common/a/a/h;->a(Lcom/instagram/common/l/a/e;)V

    return-void
.end method
