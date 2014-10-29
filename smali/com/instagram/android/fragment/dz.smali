.class final Lcom/instagram/android/fragment/dz;
.super Ljava/lang/Object;
.source "ReportProblemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/dx;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dx;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/instagram/android/fragment/dz;->a:Lcom/instagram/android/fragment/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 170
    iget-object v0, p0, Lcom/instagram/android/fragment/dz;->a:Lcom/instagram/android/fragment/dx;

    iget-object v0, v0, Lcom/instagram/android/fragment/dx;->a:Lcom/instagram/android/fragment/du;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/du;->a(Lcom/instagram/android/fragment/du;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 171
    return-void
.end method
