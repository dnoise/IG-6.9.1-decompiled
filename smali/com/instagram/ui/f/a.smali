.class public final Lcom/instagram/ui/f/a;
.super Ljava/lang/Object;
.source "PopupWindowBuilder.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/instagram/ui/f/f;

.field private c:Landroid/widget/PopupWindow;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/ui/f/a;->d:I

    .line 25
    return-void
.end method

.method public static a()Lcom/instagram/ui/f/a;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/instagram/ui/f/a;

    invoke-direct {v0}, Lcom/instagram/ui/f/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcom/instagram/ui/f/a;
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/instagram/ui/f/a;->a:Landroid/view/View;

    .line 29
    return-object p0
.end method

.method public final a(Lcom/instagram/ui/f/f;)Lcom/instagram/ui/f/a;
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/instagram/ui/f/a;->b:Lcom/instagram/ui/f/f;

    .line 34
    return-object p0
.end method

.method public final a(Landroid/content/Context;)Lcom/instagram/ui/f/b;
    .locals 4
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 52
    new-instance v0, Landroid/widget/PopupWindow;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;

    .line 57
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/instagram/ui/f/a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 59
    new-instance v0, Lcom/instagram/ui/f/b;

    iget-object v1, p0, Lcom/instagram/ui/f/a;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/instagram/ui/f/a;->b:Lcom/instagram/ui/f/f;

    iget-object v3, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/f/b;-><init>(Landroid/view/View;Lcom/instagram/ui/f/f;Landroid/widget/PopupWindow;)V

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method public final b()Lcom/instagram/ui/f/a;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/instagram/ui/f/a;->d:I

    .line 44
    return-object p0
.end method
