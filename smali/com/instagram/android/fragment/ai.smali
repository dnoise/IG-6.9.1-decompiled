.class final Lcom/instagram/android/fragment/ai;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ac;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ac;

    invoke-static {v0}, Lcom/instagram/android/fragment/ac;->g(Lcom/instagram/android/fragment/ac;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z

    .line 228
    return-void
.end method
