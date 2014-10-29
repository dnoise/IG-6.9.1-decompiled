.class final Lcom/instagram/android/fragment/di;
.super Ljava/lang/Object;
.source "PreloadOptionsFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/l/b/a;

.field final synthetic b:Landroid/widget/RadioButton;

.field final synthetic c:Lcom/instagram/android/fragment/dh;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dh;Lcom/instagram/l/b/a;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/instagram/android/fragment/di;->c:Lcom/instagram/android/fragment/dh;

    iput-object p2, p0, Lcom/instagram/android/fragment/di;->a:Lcom/instagram/l/b/a;

    iput-object p3, p0, Lcom/instagram/android/fragment/di;->b:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter "checkedId"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/instagram/android/fragment/di;->a:Lcom/instagram/l/b/a;

    iget-object v0, p0, Lcom/instagram/android/fragment/di;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/l/b/a;->e(Z)Z

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
