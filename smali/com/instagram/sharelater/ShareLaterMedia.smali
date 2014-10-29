.class public Lcom/instagram/sharelater/ShareLaterMedia;
.super Ljava/lang/Object;
.source "ShareLaterMedia.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/instagram/model/a/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/sharelater/ShareLaterMedia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/instagram/model/a/a;

.field private k:Ljava/lang/String;

.field private l:Lcom/instagram/venue/model/Venue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/instagram/sharelater/a;

    invoke-direct {v0}, Lcom/instagram/sharelater/a;-><init>()V

    sput-object v0, Lcom/instagram/sharelater/ShareLaterMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->h:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->i:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/model/a/a;->a(I)Lcom/instagram/model/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->j:Lcom/instagram/model/a/a;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->k:Ljava/lang/String;

    .line 260
    const-class v0, Lcom/instagram/venue/model/Venue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/venue/model/Venue;

    iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->l:Lcom/instagram/venue/model/Venue;

    .line 262
    invoke-static {}, Lcom/instagram/sharelater/b;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    .line 263
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 265
    sget v1, Lcom/instagram/sharelater/b;->a:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->a:Z

    .line 266
    sget v1, Lcom/instagram/sharelater/b;->b:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->b:Z

    .line 267
    sget v1, Lcom/instagram/sharelater/b;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->c:Z

    .line 268
    sget v1, Lcom/instagram/sharelater/b;->d:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->d:Z

    .line 269
    sget v1, Lcom/instagram/sharelater/b;->e:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->e:Z

    .line 270
    sget v1, Lcom/instagram/sharelater/b;->f:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->f:Z

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->g:Z

    .line 273
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/instagram/sharelater/ShareLaterMedia;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter "media"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->u()Lcom/instagram/feed/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->u()Lcom/instagram/feed/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->h:Ljava/lang/String;

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->i:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->w()Lcom/instagram/model/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->j:Lcom/instagram/model/a/a;

    .line 53
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->k:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->B()Lcom/instagram/venue/model/Venue;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->l:Lcom/instagram/venue/model/Venue;

    .line 56
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->Q()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->R()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->g:Z

    .line 58
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/c/b;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    const-string v0, "media_id"

    invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "caption"

    invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/instagram/share/vkontakte/a;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/instagram/share/f/a;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-static {}, Lcom/instagram/share/c/a;->b()Lcom/instagram/share/c/a;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/instagram/share/c/a;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    .line 98
    invoke-static {}, Lcom/instagram/share/b/a;->i()Lcom/instagram/share/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/share/b/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_3
    const-string v1, "share_to_facebook"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "fb_access_token"

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    invoke-static {}, Lcom/instagram/share/d/a;->a()Lcom/instagram/share/d/a;

    move-result-object v0

    .line 111
    const-string v1, "share_to_foursquare"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "foursquare_access_token"

    invoke-virtual {v0}, Lcom/instagram/share/d/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    invoke-static {}, Lcom/instagram/share/tumblr/a;->b()Lcom/instagram/share/tumblr/a;

    move-result-object v0

    .line 118
    const-string v1, "share_to_tumblr"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "tumblr_access_token_key"

    invoke-virtual {v0}, Lcom/instagram/share/tumblr/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "tumblr_access_token_secret"

    invoke-virtual {v0}, Lcom/instagram/share/tumblr/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_6
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->h:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->a:Z

    .line 151
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->b:Z

    .line 156
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->c:Z

    .line 161
    return-void
.end method

.method public final d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->d:Z

    .line 166
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->j:Lcom/instagram/model/a/a;

    sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->e:Z

    .line 171
    return-void
.end method

.method public final f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->f:Z

    .line 176
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->g:Z

    return v0
.end method

.method public final n()Lcom/instagram/model/a/a;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->j:Lcom/instagram/model/a/a;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->l:Lcom/instagram/venue/model/Venue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->a:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->e:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->b:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->c:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->d:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->f:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->j:Lcom/instagram/model/a/a;

    invoke-virtual {v2}, Lcom/instagram/model/a/a;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->k:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->l:Lcom/instagram/venue/model/Venue;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 230
    const/4 v2, 0x6

    new-array v2, v2, [Z

    iget-boolean v3, p0, Lcom/instagram/sharelater/ShareLaterMedia;->a:Z

    aput-boolean v3, v2, v1

    iget-boolean v3, p0, Lcom/instagram/sharelater/ShareLaterMedia;->b:Z

    aput-boolean v3, v2, v0

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/instagram/sharelater/ShareLaterMedia;->c:Z

    aput-boolean v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/instagram/sharelater/ShareLaterMedia;->d:Z

    aput-boolean v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/instagram/sharelater/ShareLaterMedia;->e:Z

    aput-boolean v4, v2, v3

    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/instagram/sharelater/ShareLaterMedia;->f:Z

    aput-boolean v4, v2, v3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 238
    iget-boolean v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->g:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    return-void

    :cond_0
    move v0, v1

    .line 238
    goto :goto_0
.end method
