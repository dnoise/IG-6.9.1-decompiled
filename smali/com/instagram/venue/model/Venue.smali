.class public Lcom/instagram/venue/model/Venue;
.super Ljava/lang/Object;
.source "Venue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/venue/model/Venue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/Double;

.field h:Ljava/lang/Double;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/instagram/venue/model/a;

    invoke-direct {v0}, Lcom/instagram/venue/model/a;-><init>()V

    sput-object v0, Lcom/instagram/venue/model/Venue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    .line 72
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/instagram/venue/model/Venue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;Z)Lcom/instagram/venue/model/Venue;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p0}, Lcom/instagram/venue/model/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/venue/model/Venue;

    move-result-object v1

    .line 79
    if-eqz p1, :cond_1

    .line 81
    invoke-static {}, Lcom/instagram/venue/model/b;->a()Lcom/instagram/venue/model/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/instagram/venue/model/Venue;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/venue/model/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/venue/model/Venue;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-direct {v0, v1}, Lcom/instagram/venue/model/Venue;->a(Lcom/instagram/venue/model/Venue;)V

    .line 92
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-static {}, Lcom/instagram/venue/model/b;->a()Lcom/instagram/venue/model/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/instagram/venue/model/Venue;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/instagram/venue/model/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 87
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 92
    goto :goto_0
.end method

.method private a(Lcom/instagram/venue/model/Venue;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    .line 113
    :cond_1
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    .line 117
    :cond_2
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    .line 121
    :cond_3
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    .line 125
    :cond_4
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 126
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    .line 129
    :cond_5
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 130
    iget-object v0, p1, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    .line 132
    :cond_6
    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 216
    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Lcom/instagram/venue/model/Venue;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    .line 101
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/Double;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    .line 197
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/Double;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    .line 205
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public final h()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/instagram/venue/model/Venue;->i:Z

    return v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/venue/model/Venue;->i:Z

    .line 213
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->g:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/instagram/venue/model/Venue;->h:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 149
    return-void
.end method
