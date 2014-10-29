.class final Lcom/instagram/android/fragment/ge;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fy;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fy;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/instagram/android/fragment/ge;->a:Lcom/instagram/android/fragment/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/instagram/android/fragment/ge;->a:Lcom/instagram/android/fragment/fy;

    const-string v1, "/legal/terms/"

    sget v2, Lcom/facebook/az;->terms_of_service:I

    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/fy;->a(Lcom/instagram/android/fragment/fy;Ljava/lang/String;I)V

    .line 209
    return-void
.end method
